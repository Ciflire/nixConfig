{ config, pkgs, ... }:
{
  environment.variables = {
    EDITOR = "nvim";
    NIXOS_OZONE_WL = "true";
    XDG_DATA_HOME = "$HOME/.local/share";
  };
}

