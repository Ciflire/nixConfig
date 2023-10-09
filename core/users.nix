{ config, pkgs, ...}:
{
  # TODO: do it with home manager
  users.users.ciflire = {
    isNormalUser = true;
    description = "ciflire";
    extraGroups = [ "networkmanager" "wheel" "postgres"];
  };

}
