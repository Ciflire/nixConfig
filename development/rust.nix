{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rustc # compiler
    rustup # rust updater
    cargo # package manager
    rust-analyzer-unwrapped #lsp
    rustfmt # formatter
  ];
}
