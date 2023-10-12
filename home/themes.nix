{ config, pkgs, home-manager, ... }:
{
  gtk = {
    enable = true;
    iconTheme = {
      name = "Adwaita";
      package = pkgs.gnome.adwaita-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
    theme = {
      name = "Juno";
      package = pkgs.juno-theme;
    };
  };
  qt = {
    enable = true;
    platformTheme = "gtk";
  };
}
