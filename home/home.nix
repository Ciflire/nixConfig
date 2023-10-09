{ config, pkgs, home-manager, ... }:

{
  imports = [
    ./themes.nix
  ];

  home = {
    stateVersion = "23.05";
  };

}
