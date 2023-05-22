# k3sup

```bash
k3sup install --ip $SERVER_IP --k3s-extra-args '--disable servicelb --disable local-storage --disable traefik --disable-cloud-controller --secrets-encryption'
```

```bash
k3sup join --ip $AGENT_IP --server-ip $SERVER_IP
```
