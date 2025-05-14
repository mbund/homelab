# helm template \
#     --dependency-update \
#     --include-crds \
#     --namespace kube-system \
#     --values system/cilium/values.yaml \
#     cilium system/cilium \
#     | kubectl apply -f -

# helm install --dependency-update --namespace kube-system --values system/cilium/values.yaml cilium system/cilium
kubectl create namespace cilium
helm install --dependency-update --namespace cilium --values system/cilium/values.yaml cilium system/cilium

kubectl create namespace argocd
# helm install --dependency-update --namespace argocd --values system/argocd/values-seed.yaml argocd system/argocd
helm template \
    --dependency-update \
    --include-crds \
    --namespace argocd \
    --values system/argocd/values-seed.yaml \
    argocd system/argocd \
    | kubectl apply -f -
