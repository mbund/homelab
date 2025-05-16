kubectl create namespace cilium
helm install --dependency-update --namespace cilium --values system/cilium/values.yaml cilium system/cilium

kubectl create namespace argocd
helm template \
    --dependency-update \
    --include-crds \
    --namespace argocd \
    --values system/argocd/values-seed.yaml \
    argocd system/argocd \
    | kubectl apply -f -

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
