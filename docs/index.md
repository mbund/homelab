# Mark's Homelab :sailboat:

<div align="center">
    <img alt="Mark's Homelab" src="title.svg" width="800" />
</div>

Fully automated Kubernetes and GitOps setup to host my important services at home.

## Live Stats

<a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=root&revision=true"></a>

<details>
<summary>ArgoCD Sync</summary>

<table>
<tr>
    <td>argocd</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=argocd&revision=true"></a></td>
</tr>
<tr>
    <td>cert-manager</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=cert-manager&revision=true"></a></td>
</tr>
<tr>
    <td>element</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=element&revision=true"></a></td>
</tr>
<tr>
    <td>emqx</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=emqx&revision=true"></a></td>
</tr>
<tr>
    <td>excalidraw</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=excalidraw&revision=true"></a></td>
</tr>
<tr>
    <td>external-dns-cloudflare</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=external-dns-cloudflare&revision=true"></a></td>
</tr>
<tr>
    <td>external-dns-pihole</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=external-dns-pihole&revision=true"></a></td>
</tr>
<tr>
    <td>external-secrets</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=external-secrets&revision=true"></a></td>
</tr>
<tr>
    <td>homarr</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=homarr&revision=true"></a></td>
</tr>
<tr>
    <td>ingress-nginx-private</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=ingress-nginx-private&revision=true"></a></td>
</tr>
<tr>
    <td>ingress-nginx-private</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=ingress-nginx-private&revision=true"></a></td>
</tr>
<tr>
    <td>ingress-nginx-public</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=ingress-nginx-public&revision=true"></a></td>
</tr>
<tr>
    <td>loki</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=loki&revision=true"></a></td>
</tr>
<tr>
    <td>longhorn</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=longhorn&revision=true"></a></td>
</tr>
<tr>
    <td>mailserver</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=mailserver&revision=true"></a></td>
</tr>
<tr>
    <td>metallb</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=metallb&revision=true"></a></td>
</tr>
<tr>
    <td>monitoring</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=monitoring&revision=true"></a></td>
</tr>
<tr>
    <td>pihole</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=pihole&revision=true"></a></td>
</tr>
<tr>
    <td>root</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=root&revision=true"></a></td>
</tr>
<tr>
    <td>searxng</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=searxng&revision=true"></a></td>
</tr>
<tr>
    <td>speedtest</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=speedtest&revision=true"></a></td>
</tr>
<tr>
    <td>uptime-kuma</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=uptime-kuma&revision=true"></a></td>
</tr>
<tr>
    <td>vault</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=vault&revision=true"></a></td>
</tr>
<tr>
    <td>vaultwarden</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=vaultwarden&revision=true"></a></td>
</tr>
</table>

</details>

<div style="display: flex; flex-direction: column">
    <div style="display: flex">
        <iframe src="https://grafana.mbund.org/d-solo/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&panelId=7" style="flex: 1" frameborder="0"></iframe>
        <iframe src="https://grafana.mbund.org/d-solo/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&panelId=3" style="flex: 1" frameborder="0"></iframe>
    </div>
    <iframe src="https://grafana.mbund.org/d-solo/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&panelId=5" width="100%" height="200" frameborder="0"></iframe>
    <iframe src="https://grafana.mbund.org/d-solo/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&panelId=6" width="100%" height="500" frameborder="0"></iframe>
</div>

## Architecture

<a href="https://excalidraw.com/#json=kshmBqYvL_cPoKnck2Cc2,OQM1UKY0l-UEa_Ya3PBc6A">
    <img src="excalidraw/architecture.png">
</a>

## Hardware

<figure markdown>
  ![Hardware used in the homelab](images/homelab.jpg){ width="500" }
  <figcaption>Scuffed homelab. Laptop on left runs Proxmox/Kubernetes, desktop on right runs bare Ubuntu Server and is not a part of the cluster.</figcaption>
</figure>

- Dell Inspiron 7580
    - CPU: `8 x Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz`
    - RAM: `8GB`
    - SSD: `128GB`
    - HDD: `1TB`

- Dell XPS 8700 (depicted in image but not used)
    - CPU: `8 x Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz`
    - RAM: `8GB`

## Screenshots

| ArgoCD |
| :--: |
| ![ArgoCD dashboard screenshot](images/argocd.png) |

| Lens |
| :--: |
| ![Lens (Kubernetes dashboard screenshot)](images/lens.png) |

## Apps

<table>
    <tr>
        <th>Logo</th> <th>Name</th> <th>Description</th>
    </tr>
    <tr>
        <td><img src="https://raw.githubusercontent.com/toboshii/hajimari/main/assets/logo.png" width="48">
        <td><a href="https://hajimari.io">Hajimari</a></td>
        <td>Simplistic startpage for Kubernetes services</td>
    </tr>
    <tr>
        <td><img src="https://docs.excalidraw.com/img/logo.svg" width="48">
        <td><a href="https://docs.excalidraw.com">Excalidraw</a></td>
        <td>Online whiteboard</td>
    </tr>
    <tr>
        <td><img src="https://raw.githubusercontent.com/loganmarchione/homelab-svg-assets/main/assets/uptimekuma.svg" width="48">
        <td><a href="https://github.com/louislam/uptime-kuma">Uptime Kuma</a></td>
        <td>Service uptime checker</td>
    </tr>
    <tr>
        <td><img src="https://raw.githubusercontent.com/loganmarchione/homelab-svg-assets/main/assets/searxng.svg" width="48">
        <td><a href="https://searxng.org">Searxng</a></td>
        <td>Metasearch engine</td>
    </tr>
    <tr>
        <td><img src="https://raw.githubusercontent.com/loganmarchione/homelab-svg-assets/main/assets/element.svg" width="48">
        <td><a href="https://element.io">Element</a></td>
        <td>Matrix web client</td>
    </tr>
    <tr>
        <td><img src="https://raw.githubusercontent.com/loganmarchione/homelab-svg-assets/main/assets/vaultwarden.svg" width="48">
        <td><a href="https://github.com/dani-garcia/vaultwarden">Vaultwarden</a></td>
        <td>Bitwarden compatible password manager</td>
    </tr>
    <tr>
        <td><img src="https://images.ctfassets.net/nrgyaltdicpt/h9dpHuVys19B1sOAWvbP6/5f8d4c6d051f63e4ba450befd56f9189/ologo_square_colour_light_bg.svg" width="48">
        <td><a href="https://overleaf.com">Overleaf</a></td>
        <td>Online Latex collaborative studio</td>
    </tr>
    <tr>
        <td><img src="images/emqx.svg" width="48">
        <td><a href="https://emqx.io">EMQX</a></td>
        <td>MQTT broker</td>
    </tr>
        <tr>
        <td><img src="https://raw.githubusercontent.com/loganmarchione/homelab-svg-assets/main/assets/gitea.svg" width="48">
        <td><a href="https://gitea.io">Gitea</a></td>
        <td>Self hosted git server</td>
    </tr>
</table>
