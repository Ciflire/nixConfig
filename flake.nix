{
  description = "My second flake ";

  inputs = {
    nixpkgs-master.url = "github:nixos/nixpkgs/master";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs-master";
    };
    helix.url = "github:helix-editor/helix";
  };
  # inputs.firefox-hyprland.inputs.nixpkgs.follows = "nixpkgs-unstable";
  inputs.nixvim = {
    url = "github:nix-community/nixvim";
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
    # url = "github:nix-community/nixvim/nixos-23.05";

    inputs.nixpkgs.follows = "nixpkgs-unstable";
  };
  outputs = { nixpkgs-master, nixpkgs-unstable, home-manager, ... }@inputs:
    {
      nixosConfigurations = {
        g713-nixos = nixpkgs-master.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {inherit inputs;};
          modules = [
            ./core/configuration.nix
            ./development/main.nix
            ./hyprland/hypr.nix

            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useUserPackages = true;
                useGlobalPkgs = true;
                users.ciflire = ./home/home_ciflire.nix;
              };
            }
          ];
        };
      };
    };
}
