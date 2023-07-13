{
  description = "Developer environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    flake-utils,
    nixpkgs,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      devShell = pkgs.mkShell {
        packages = with pkgs; [
          kubectl
          go-task
          k3sup
          kube3d
          terraform
          (pkgs.python3.withPackages (ps: with ps; [mkdocs-material pillow cairosvg pytz]))
          go
          gopls
        ];
      };
    });
}
