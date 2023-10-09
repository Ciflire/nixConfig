{ config, pkgs, home-manager, ... }:
{
  gtk = {
    enable = true;
    iconTheme = {
      name = "Adwaita";
      package = pkgs.gnome3.adwaita-icon-theme;
    };
    theme = {
      name = "Shades-of-gray";
      package = pkgs.shades-of-gray-theme;
    };
  };
  qt = {
    enable = true;
    platformTheme = "gtk";
  };
}
