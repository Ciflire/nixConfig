{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rocmPackages.llvm.clang
    clang-tools
    lldb
    gccgo
  ];
}


