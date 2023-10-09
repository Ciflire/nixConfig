{ config, pkgs, ... }:
{
  imports = [
  ];
  # Enable TWM hyprland
  programs.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
  };
}
