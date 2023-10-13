{ config, lib, pkgs, ... }:

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
  ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";

  environment.systemPackages = with pkgs; [
    neovim
    
    helix
    tree-sitter
    
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
  ];
}
