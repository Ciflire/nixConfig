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

  programs.wireshark.enable = true;

   programs.steam = {
     enable = true;
     remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
     dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
   };
  
   nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
     "steam"
     "steam-original"
     "steam-run"
   ];

    nixpkgs.overlays = [
    (final: prev: {
      steam = prev.steam.override ({ extraPkgs ? pkgs': [], ... }: {
        extraPkgs = pkgs': (extraPkgs pkgs') ++ (with pkgs'; [
          libgdiplus
        ]);
      });
    })
  ];


  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    neovim
    ripgrep
    
    helix

    tree-sitter
    lshw
    unzip
    zip
    light
    
    wget
    git
    neofetch
    man
    btop

    bluetuith

    #TODO: move to user only systemPackages
    discord
    virtualbox

    #TODO: move those packages into nvim dependencies
    lazygit

    cmatrix

    rar

    vimPlugins.copilot-vim
    
    zellij

    openapi-generator-cli
  ];
}
