{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;[
    # npm pm
    nodejs_20

    rustup
  ];
}
