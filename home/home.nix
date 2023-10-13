{ config, pkgs, home-manager, ... }:

{
  imports = [
    ./themes.nix
    ./terminal.nix
  ];

  home = {
    stateVersion = "23.05";
  };

}
