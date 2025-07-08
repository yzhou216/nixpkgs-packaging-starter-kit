{
  description = "A Flake for building packages";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config = {
            allowUnfree = true;
            allowBroken = true;
          };
        };
        package = "foobar"; # Replace foobar with the package name
      in
      {
        packages = {
          ${package} = pkgs.callPackage ./package.nix { };
          default = self.packages.${system}.${package};
        };

        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            gnumake
            nil
            nixfmt-rfc-style
            nix-init
          ];
        };
      }
    );
}
