{ config, pkgs, ... }:
{
  imports = [
    ./packages.nix
    ./swaylock.nix
  ];
  # Enable TWM hyprland
  programs.hyprland = {
    enable = true;
    #has no point anymore
    # enableNvidiaPatches = true;
    #set extra packages with hyprland
  };

}
