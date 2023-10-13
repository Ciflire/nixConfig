{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    postgresql
    pgadmin4
  ];
}
