{ config, lib, pkgs,inputs, ... }:

{
  imports = [
    ./bluetooth.nix
    ./envVars.nix
    ./fonts.nix
    ./hardware-configuration.nix
    ./localVars.nix
    ./network.nix
    ./nvidia.nix
    ./pipewire.nix
    ./pgsql.nix
    ./pm.nix
    ./systemd.nix
    ./users.nix
    ./wine.nix
  ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";

  # programs.steam = {
  #   enable = true;
  #   remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  #   dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  # };
  #
  # nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
  #   "steam"
  #   "steam-original"
  #   "steam-run"
  # ];


  environment.systemPackages = with pkgs; [
    openconnect
    neovim
    ripgrep
    
    inputs.helix.packages.${pkgs.system}.default

    tree-sitter

    unzip
    zip

    wget
    git
    neofetch
    man
    btop

    bluetuith

    #TODO: move to user only systemPackages
    discord-canary

    #TODO: move those packages into nvim dependencies
    lazygit

    cmatrix

    rar
    
    zellij
  ];
}
