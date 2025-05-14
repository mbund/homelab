FROM quay.io/fedora/fedora-coreos:stable

COPY overlay/ /

RUN date >> /etc/fcos-build-at.txt

RUN rpm-ostree install tailscale
RUN systemctl enable tailscaled.service

ENV INSTALL_K3S_BIN_DIR=/usr/bin
ENV INSTALL_K3S_SKIP_ENABLE="true"
RUN curl -sfL https://get.k3s.io | sh -
RUN systemctl enable k3s.service

ENV CLI_ARCH=amd64
RUN curl -L --fail --remote-name-all https://github.com/cilium/cilium-cli/releases/download/v0.18.3/cilium-linux-${CLI_ARCH}.tar.gz{,.sha256sum}
RUN sha256sum --check cilium-linux-${CLI_ARCH}.tar.gz.sha256sum
RUN sudo tar xzvfC cilium-linux-${CLI_ARCH}.tar.gz /usr/bin
RUN rm cilium-linux-${CLI_ARCH}.tar.gz{,.sha256sum}

RUN ostree container commit
