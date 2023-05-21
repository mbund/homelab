# Longhorn

## Debian

```
apt install curl open-iscsi nfs-common
```

## Configuring disks

Identify an empty disk, like `/dev/sdb`.

```
apt install gdisk
sgdisk --zap-all /dev/sdb
sgdisk -n 0:0:0 /dev/sdb
mkfs.ext4 /dev/sdb1
```

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
