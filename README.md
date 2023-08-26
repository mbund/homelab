# Mark's Homelab :sailboat:

Fully automated Kubernetes and GitOps setup to host my important services at home.

Read the [docs](https://docs.mbund.org) for technical details.

## Live Stats

<table>
<tr>
    <td>argocd</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=argocd&revision=true"></a></td>
    <td>cert-manager</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=cert-manager&revision=true"></a></td>
</tr>
<tr>
    <td>element</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=element&revision=true"></a></td>
    <td>emqx</td>
    <td><a href="https://docs.mbund.org"><img src="https://argocd.mbund.org/api/badge?name=emqx&revision=true"></a></td>
</tr>
</table>



<a href="https://grafana.mbund.org/d/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&viewPanel=7"><img src="https://grafana-fetch-cache.mbund.org/server-time" width="46%"></a>
<a href="https://grafana.mbund.org/d/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&viewPanel=3"><img src="https://grafana-fetch-cache.mbund.org/server-uptime" width="46%" align="right"></a>
<a href="https://grafana.mbund.org/d/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&viewPanel=5"><img src="https://grafana-fetch-cache.mbund.org/internet-connectivity"></a>
<a href="https://grafana.mbund.org/d/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&viewPanel=6"><img src="https://grafana-fetch-cache.mbund.org/memory-usage"></a>

## Architecture

<a href="https://excalidraw.com/#json=kshmBqYvL_cPoKnck2Cc2,OQM1UKY0l-UEa_Ya3PBc6A">
    <img src="docs/excalidraw/architecture.png">
</a>

## Hardware

<div align="center">
  <img src="docs/images/homelab.jpg" alt="Hardware used in the homelab" width="500" />
  <div>Scuffed homelab. Laptop on left runs Proxmox/Kubernetes, desktop on right runs bare Ubuntu Server and is not a part of the cluster.</div>
</div>

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
| ![ArgoCD dashboard screenshot](docs/images/argocd.png) |

| Lens |
| :--: |
| ![Lens (Kubernetes dashboard screenshot)](docs/images/lens.png) |

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
        <td><img src="docs/images/emqx.svg" width="48">
        <td><a href="https://emqx.io">EMQX</a></td>
        <td>MQTT broker</td>
    </tr>
        <tr>
        <td><img src="https://raw.githubusercontent.com/loganmarchione/homelab-svg-assets/main/assets/gitea.svg" width="48">
        <td><a href="https://gitea.io">Gitea</a></td>
        <td>Self hosted git server</td>
    </tr>
</table>
