{config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    nodePackages_latest.vscode-html-languageserver-bin
  ];
}
