{ config, pkgs, ... }:
{
  # TODO: do it with home manager
  users.users.ciflire = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "ciflire";
    extraGroups = [ "networkmanager" "wheel" "postgres" ];
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    shellAliases = {
      vpn = "sudo openconnect -u vesse1u@etu --authgroup='Universite-de-Lorraine' vpn.univ-lorraine.fr";
      rnm = "sudo systemctl restart NetworkManager";
      rebuild = "sudo nixos-rebuild switch --flake /home/ciflire/secondFlake#g713-nixos";
    };
  };
  programs.starship = {
    enable = true;
    settings = ./starship.toml;
  };
}
