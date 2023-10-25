{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nodePackages_latest.svelte-check
    nodePackages_latest.svelte-language-server  
  ];
}
