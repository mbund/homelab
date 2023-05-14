# Development Environment

## Getting Started

Clone the repository and checkout the development branch

```sh
git clone https://github.com/mbund/homelab
git checkout dev
```

## Dependencies

=== "Nix"

    A development shell is available using [nix](https://nixos.org) with all dependencies installed. Use by running `nix develop` to enter the shell.

    !!! tip "direnv"

        For a more comfortable developer experience, many nix users use [direnv](https://direnv.net) to integrate with their shell. After you have direnv installed, create a `.envrc` file in the root of the git repository with the following contents:

        ```bash title=".envrc"
        export KUBECONFIG=/full/path/to/mbund/homelab/dev/kubeconfig-dev.yaml
        use flake
        ```

        Note that by convention the `.envrc` file should not be checked into git.

=== "Generic"

    - Homelab
        - [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
        - [Go Task](https://taskfile.dev/installation)
        - [k3d](https://k3d.io/#installation) (only needed for development)
        - [Terraform](https://developer.hashicorp.com/terraform/downloads) (only needed for production)
        - [k3sup](https://github.com/alexellis/k3sup#download-k3sup-tldr) (optional)
    - Docs
        - Install [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/getting-started/#latest) including [image processing dependencies](https://squidfunk.github.io/mkdocs-material/setup/dependencies/image-processing)

## Develop

### Bootstrap

Run the task `dev` to fully bootstrap the development environment.

```bash
task dev
```

After waiting ~15 minutes you should be able to reach the hosted services at `https://*.127-0-0-1.nip.io`, for example at [https://home.127-0-0-1.nip.io](https://home.127-0-0-1.nip.io).

!!! warning "Caveats"

    - SSL certs are invalid because there is no domain name
    - Does not help in testing external networking (e.g. Cloudflare)
    - No persistent storage

### Git

Run the task `dev:git-configuration` to add the local gitea instance in the sandbox environment in the cluster as a remote in git. When you push to it, the local ArgoCD will detect the change and apply the configuration changes.

```bash
task dev:git-configuration
```

Now when you need to commit, push to the sandbox remote.

```bash
git add -A
git commit -m "changes"
git push sandbox
```

### Explore

Get access to secrets by using some task scripts:

```bash
task scripts:argocd-admin-password
task scripts:vault-root-token
```

!!! note "Newlines"

    Some terminals might show a newline character in the password like `nZ6hzMpShZvf5AVS⏎`, but simply ignore it when using the password.

## Clean up

Run the task `dev:cleanup` to clean up (delete the local test Kubernetes cluster)

```bash
task dev:cleanup
```
