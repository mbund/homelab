{
  description = "Developer environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.devshell.url = "github:numtide/devshell";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    flake-utils,
    devshell,
    nixpkgs,
  }:
    flake-utils.lib.eachDefaultSystem (system: {
      devShell = let
        pkgs = import nixpkgs {
          inherit system;

          overlays = [devshell.overlays.default];
        };
      in
        pkgs.devshell.mkShell {
          packages = with pkgs; [
            kubectl
            go-task
            k3sup
            kube3d
          ];
        };
    });
}
