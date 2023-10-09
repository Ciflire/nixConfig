{ config, lib, pkgs, ... }:

{
  imports = [
    ./envVars.nix
    ./hardware-configuration.nix
    ./locale.nix
    ./network.nix
    ./nvidia.nix
    ./systemd.nix
  ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";

  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    neofetch
    man
  ];
}
