{ config, pkgs, home-manager, ... }:

{
  imports = [
    ./themes.nix
    ./terminal.nix
#    ./users.nix
  ];

  home = {
    stateVersion = "23.05";
  };

}
