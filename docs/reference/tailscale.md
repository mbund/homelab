# Tailscale

## Setup

todo

## Android

The current Tailscale app for android has a [bug](https://forum.tailscale.com/t/cname-aliases-to-magicdns-dont-seem-to-work-on-android/1584) where the CNAME doesn't resolve correctly, and you can't access your services when connected to the Tailnet. So even though the following configuration works to create an ingress for an application on all other platforms, we have to switch to a less elegent solution to support Android.

```yaml
ingressClassName: private-nginx
annotations:
  external-dns.alpha.kubernetes.io/target: homelab.tail22829.ts.net
```

We need to force it to make an A record instead of a CNAME to resolve to our `homelab`. We can easily find the ip address of the `homelab` private Nginx instance:

```
$ tailscale status
100.97.242.57   homelab              tagged-devices linux   -
```

Then update the target ingress for all your ingresses to match that IP.

```yaml
ingressClassName: private-nginx
annotations:
  external-dns.alpha.kubernetes.io/target: 100.97.242.57
```

Tailscale IP addresses in your Tailnet are stable, so once it is assigned it should be the same one for as long as the device exists.