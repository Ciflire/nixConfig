{ config, pkgs, ... }:
{
  environment.variables = {
    EDITOR = "nvim";
    XDG_DATA_HOME = "$HOME/.local/share";
    # NIXOS_OZONE_WL = "1";
  };
}

