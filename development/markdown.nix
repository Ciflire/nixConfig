{config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs;[
    marksman
    mdbook
  ];
}
