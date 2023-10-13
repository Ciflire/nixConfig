{ config, pkgs, ...}:
{
  # TODO: do it with home manager
  users.users.ciflire = {
    shell = pkgs.zsh;
    isNormalUser = true;
    description = "ciflire";
    extraGroups = [ "networkmanager" "wheel" "postgres"];
  };

}
