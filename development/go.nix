{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    go
    go-task
    gopls
    gofumpt
  ];
}

