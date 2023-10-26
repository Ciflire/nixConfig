{ config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs;[
    nodePackages_latest.typescript
    nodePackages_latest.typescript-language-server
    nodePackages_latest.prettier
  ];
}
