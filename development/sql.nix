{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs;[
    pgadmin4
    mariadb
    mongodb-compass
    mysql-workbench
    sqlite
    sqls
    sqlite-web
  ];
}
