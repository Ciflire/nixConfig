{ config, lib, pkgs, ... }:

{
  config.services.postgresql = {
    enable = true;
    enableTCPIP = true;
    ensureDatabases = [ "mydatabase" ];
    authentication = ''
      #type database  DBuser  auth-method
      local all       all     trust
    '';
  };
}
