{ config, pkgs, ... }:
{
  # TODO: do it with home manager
  users.users.ciflire = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "ciflire";
    extraGroups = [ "networkmanager" "wheel" "postgres" "docker" "wireshark"];
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    shellAliases = {
      vpn = "sudo openconnect -u vesse1u@etu --authgroup='Universite-de-Lorraine' vpn.univ-lorraine.fr";
      rnm = "sudo systemctl restart NetworkManager";
      upgrade = "sudo nixos-rebuild switch --flake /home/ciflire/nixConfig#g713-nixos";
      update = "sudo nix flake update /home/ciflire/nixConfig";
      wallpaper = "/home/ciflire/dotfiles/hypr/scripts/wallpaper.sh select";
      ls = "eza";
      la = "eza -la";
      lr = "eza -lR";
      cat = "bat";
      open = "xdg-open";
    };
  };

  programs.starship = {
    enable = true;
    #    settings = ./starship.toml;
  };

}
