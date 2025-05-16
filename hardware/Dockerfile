FROM quay.io/fedora/fedora-coreos:stable

COPY overlay/ /

RUN date >> /etc/fcos-build-at.txt

RUN rpm-ostree install tailscale
RUN systemctl enable tailscaled.service

ENV INSTALL_K3S_BIN_DIR=/usr/bin
ENV INSTALL_K3S_SKIP_ENABLE="true"
RUN curl -sfL https://get.k3s.io | sh -
RUN systemctl enable k3s.service

RUN systemctl enable set-selinux-context.service

RUN ostree container commit
