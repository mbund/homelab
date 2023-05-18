# Longhorn

## Single node cluster considerations

### Reduce Longhorn replica count

For a single node cluster, set Longhorn's `defaultClassReplicaCount` to 1:

```yaml title="system/longhorn/values.yaml" hl_lines="5"
longhorn:
  defaultSettings:
    nodeDownPodDeletionPolicy: delete-both-statefulset-and-deployment-pod
  persistence:
    defaultClassReplicaCount: 2
```
