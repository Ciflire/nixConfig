{
  description = "My second flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        g713-nixos = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./core/configuration.nix
            ./hyprland/hypr.nix
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useUserPackages = true;
                useGlobalPkgs = true;
                users.ciflire = ./home/home.nix;
              };
            }
          ];
        };
      };
    };
}
