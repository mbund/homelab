# Matrix

## Signing Key

All Matrix homeservers require a signing key, which is used for authenticating federation requests and events. If you already have old signing keys from a previous Matrix installation on the same domain name, you can reuse those instead.

Create a signing key and add it in your Vault as `synapse/signingkey` under secret `signing_key`.

```bash
docker run --rm --entrypoint generate_signing_key matrixdotorg/synapse:v1.83.0
```

## Adding Users

By default account creation is disabled, and new users need to be manually added from the command line.

```
kubectl exec -n synapse -it pods/synapse-matrix-synapse-4v2u0av41-423t5 -- /bin/bash
register_new_matrix_user --config /synapse/secrets/config.yaml --user mbund --password my_secret_password --admin
```
