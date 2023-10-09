{ config, lib, pkgs, ... }:

{
  boot.loader = {
    systemd-boot = {
      enable = true;
      editor = false;
      configurationLimit = 20;
    };
    efi.canTouchEfiVariables = true;

  };
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 20;

}
