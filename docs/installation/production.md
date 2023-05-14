## Prerequisites

### Kubernetes

You must have access to a Kubernetes cluster. I run Proxmox on bare metal, then Ubuntu Server in VMs. The Ubuntu VMs are joined together with [k3sup](https://github.com/alexellis/k3sup).

### Terraform

Terraform is used in production to manage DNS records and the Cloudflare Tunnel. By default it uses the `local` [terraform backend](https://developer.hashicorp.com/terraform/language/settings/backends/configuration#available-backends) but you can switch to another (like using Terraform Cloud or remote S3) which is safer.

### Cloudflare

Transfer your domain to [Cloudflare](https://cloudflare.com) if you have not already.

## Customizing

We are now ready to begin tailoring the cluster configuration to our own.

### Domain

Replace all instances of `mbund.org` with your domain, and also change the referenced repo. For example, change the following highlighted lines:

```yaml hl_lines="3 7" title="apps/hajimari/values.yaml"
annotations:
  cert-manager.io/cluster-issuer: letsencrypt-prod
  external-dns.alpha.kubernetes.io/target: "homelab-tunnel.mbund.org"
  external-dns.alpha.kubernetes.io/cloudflare-proxied: "true"
  hajimari.io/enable: "false"
hosts:
  - host: &host home.mbund.org
```

```terraform hl_lines="2" title="terraform/modules/cloudflare/main.tf"
data "cloudflare_zone" "zone" {
  name = "mbund.org"
}
```

```yaml hl_lines="2" title="bootstrap/root/values-seed.yaml"
gitops:
  repo: https://github.com/mbund/homelab
```

```yaml hl_lines="2" title="bootstrap/root/values.yaml"
gitops:
  repo: https://github.com/mbund/homelab
  revision: main
```

It would be best to do a massive ++ctrl+f++ on the repository to replace all instances of `mbund.org` with your domain. Then double check that there are no more remaining `mbund`s in the repo.

### Terraform Variables

Fill in the required variables for Terraform to manage your DNS and Tunnel.

```terraform title="terraform/terraform.tfvars"
cloudflare_email      = "..."
cloudflare_account_id = "..."
cloudflare_api_key    = "..." # Global API Key
```

## Bootstrap

!!! warning "KUBECONFIG"

    Make sure your `KUBECONFIG` environment variable is pointed at your correct `kubeconfig` file, and that you can run `kubectl get node` on the cluster you want.

    ```title="kubectl get node"
    NAME           STATUS   ROLES                  AGE   VERSION
    k8s-master-1   Ready    control-plane,master   23h   v1.26.4+k3s1
    ```

Run the `bootstrap` task, then the `terraform` task sequentially with the following command:

```bash
task bootstrap terraform
```

The `terraform` task will wait for the required namespaces to exist before continuing, so the terminal might be taken up idling for a while.

Even after Terraform has applied, it still might need a few more minutes for services to start up.

## Explore

You should start to be able to visit your services. An important place to start is `argocd.your.domain` to check on the health of your services.

### Troubleshooting

If every service does not deploy immediately you may want to port forward ArgoCD locally. This has a high chance of working since it does not need the whole networking chain working. Visit [http://localhost:9000](http://localhost:9000) after exposing ArgoCD.

```
kubectl port-forward -n argocd svc/argocd-server 9000:80
```

Also, since Longhorn is never exposed, you may want to take a quick look at it just to make sure everything is okay by port forwarding it to your machine. Visit [http://localhost:9001](http://localhost:9001) after exposing Longhorn.

```
kubectl port-forward -n longhorn svc/longhorn-frontend 9001:80
```

### Secrets

Get access to secrets by using some task scripts:

```bash
task scripts:argocd-admin-password
task scripts:vault-root-token
```

!!! note "Newlines"

    Some terminals might show a newline character in the password like `nZ6hzMpShZvf5AVS⏎`, but simply ignore it when using the password.
