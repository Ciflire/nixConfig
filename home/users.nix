{ config, pkgs, lib, ... }:

{
  home = {
    username = "ciflire";
    homeDirectory = lib.mkDefault "/home/ciflire";
  };

  programs.zsh = {
    enable = true;
  };
}
