{config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs;[
    pgadmin4
    mariadb
    mysql-workbench
    sqlite
    sqls
    sqlite-web
  ];
}
