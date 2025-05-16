import * as pulumi from "@pulumi/pulumi";
import * as linode from "@pulumi/linode";
import * as fs from "node:fs";

const relay = new linode.Instance("relay", {
  region: "us-ord",
  label: "relay",
  type: "g6-nanode-1",
  image: "linode/debian12",
  authorizedKeys: [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM2kbXZV9yOofK3s37lz5DDogOIp9EKuUxaOhVdczKDr",
  ],
  metadatas: [
    {
      userData: btoa(fs.readFileSync("cloud-init.yaml", "utf-8")),
    },
  ],
});
