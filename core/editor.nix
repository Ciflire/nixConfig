{ config, lib, pkgs}:
{
  environment.systemPackages = {
    pkgs.inputs.helix.packages.${pkgs.system}.default
  };
}
