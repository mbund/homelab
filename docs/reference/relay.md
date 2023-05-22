# Relay Server

Install [tailscale](https://tailscale.com) on the relay server, and join it to your tailnet.

```
curl -fsSL https://tailscale.com/install.sh | sh
tailscale up
```

Then, install [rinetd](https://github.com/samhocevar/rinetd) and jq.

```
apt install rinetd jq
```

Disable (don't start the service on server startup) and stop (stop the service now) the default installed systemd service for rinetd.

```
systemctl disable rinetd
systemctl stop rinetd
```

Edit `rinetd`'s config to include this section. Make note of your public static IP address for the first column, `bindadress`.

```title="/etc/rinetd.conf"
# bindadress    bindport  connectaddress  connectport
207.148.11.91   443       homelab-relay   443
207.148.11.91   80        homelab-relay   80
```

Create custom `rinetd` systemd service by editing the file `/etc/systemd/system/tailscale-rinetd.service` to contain the folowing.

```ini title="/etc/systemd/system/tailscale-rinetd.service"
[Unit]
Description=rinetd systemd native supporting Tailscale
Documentation=https://mbund.github.io/homelab
Requires=tailscaled.service
After=tailscaled.service

[Service]
Type=forking
Restart=no
TimeoutSec=5min
IgnoreSIGPIPE=no
KillMode=process
GuessMainPID=no
RemainAfterExit=yes
SuccessExitStatus=5 6
ExecStartPre=/bin/sh -c 'while [ $(tailscale status --peers=false --json=true | jq -r ".Self.Online") = "false" ]; do sleep 1; done'
ExecStart=/etc/init.d/rinetd start
ExecStop=/etc/init.d/rinetd stop
ExecReload=/etc/init.d/rinetd

[Install]
WantedBy=multi-user.target
```

Enable (start the service on server startup) and start (start the service now) the newly created service.

```
systemctl enable tailscale-rinetd.service
systemctl start tailscale-rinetd.service
```
