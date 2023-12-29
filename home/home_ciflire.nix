{ config, pkgs, home-manager, ... }:

{
  imports = [
    ./users.nix
  ];

  home = {
    stateVersion = "23.05";
  };

}
