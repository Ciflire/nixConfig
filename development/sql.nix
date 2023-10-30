{config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs;[
    sqlite
    sqlite-web
  ];
}
