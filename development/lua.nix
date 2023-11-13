{config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    lua
    lua-language-server
    luajitPackages.luacheck
    stylua
  ];
}
