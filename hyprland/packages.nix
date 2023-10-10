{ config, pkgs, ... }:
{
  # TODO: extra packages of hyprland
  environment.systemPackages = with pkgs; [
    alacritty
    arandr
    brightnessctl
    cinnamon.nemo-with-extensions
    dunst # notification system
    eww-wayland # status bar
    firefox-wayland
    gitkraken
    grim
    jq
    libreoffice-qt
    playerctl
    polkit # authentication agent
    slurp
    spotify
    swappy
    sway
    swaylock-effects # Screenlock
    swww # wallpaper

    xdg-desktop-portal-hyprland
    xdg-utils

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
