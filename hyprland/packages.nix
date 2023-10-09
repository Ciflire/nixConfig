{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    alacritty
    arandr
    brightnessctl
    dunst # notification system
    eww-wayland # status bar
    firefox-wayland
    gitkraken
    grim
    jq
    playerctl
    polkit # authentication agent
    slurp
    spotify
    swappy
    sway
    swaylock-effects # Screenlock
    swww # wallpaper
    xfce.thunar
    xournalpp
    waybar # status bar
    wireplumber # sound
    wl-clipboard # clipboard
    wlogout # logout manager
    wofi # app launchers
    zathura # PDF viewer
  ];

}
