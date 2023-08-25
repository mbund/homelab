# Mark's Homelab :sailboat:

Fully automated Kubernetes and GitOps setup to host my important services at home.

## Live Stats

<img src="https://argocd.mbund.org/api/badge?name=argocd&revision=true">

<iframe src="https://grafana.mbund.org/d-solo/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&panelId=7" height="150" frameborder="0"></iframe>
<iframe src="https://grafana.mbund.org/d-solo/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&panelId=3" height="150" frameborder="0"></iframe>
<iframe src="https://grafana.mbund.org/d-solo/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&panelId=5" width="100%" height="150" frameborder="0"></iframe>
<iframe src="https://grafana.mbund.org/d-solo/b250375b-77ce-456f-9c27-6c38221dd21a/misc?orgId=1&panelId=6" width="100%" height="500" frameborder="0"></iframe>

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
