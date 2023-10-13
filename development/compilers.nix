{ config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    typst
    llvmPackages_rocm.clang
    gcc
  ];
}

