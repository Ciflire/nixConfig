{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # kde2nix.url = "github:nix-community/kde2nix";

    # home-manager = {
    #   url = "github:nix-community/home-manager";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {

      nixosConfigurations.default = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          # kde2nix.nixosModules.plasma6
          ./hosts/default/configuration.nix
          # inputs.home-manager.nixosModules.default
          # ({ services.xserver.desktopManager.plasma6.enable = true; })
        ];
      };

    };
}
