{ config, pkgs, ... }:
{
  fonts = {
    packages = [
      pkgs.nerdfonts
    ];
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        monospace = [ "FiraCode Nerd Font Mono" ];
      };
    };
  };

  # console.font = "FiraCode Nerd Font Mono";
}
