{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    jdk
    gradle
    jdt-language-server
    google-java-format
  ];
}


