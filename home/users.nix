{ config, pkgs, ... }:

{
  home = {
    username = "ciflire";
    homeDirectory = "/home/ciflire";
  };

  programs.zsh = {
    enable = true;
  }
}
