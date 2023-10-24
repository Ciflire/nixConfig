{ config, pkgs, home-manager, ... }:

{
  imports = [
    ./themes.nix
    ./users.nix
  ];

  home = {
    stateVersion = "23.05";
  };

}
