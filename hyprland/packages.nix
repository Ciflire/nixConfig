{ config, pkgs, inputs, ... }:
{
  # TODO: extra packages of hyprland
  environment.systemPackages = with pkgs; [
    alacritty
    kitty
    arandr
    brightnessctl
    cinnamon.nemo-with-extensions
    clapper
    dunst # notification system
    eww-wayland # status bar
    firefox-bin
    fractal
    gitkraken
    grim
    webcord
    jq
    libreoffice-qt
    lutris
    nwg-displays
    nwg-bar
    nwg-menu
    nwg-dock
    nwg-panel
    nwg-drawer
    nwg-wrapper
    nwg-launchers
    nwg-look
#    nwg-shell
    obs-studio
    wlr-randr
    playerctl
    polkit # authentication agent
    ryujinx
    slurp
    spotify
    # steam
    # steam-run
    swappy
    sway
    swaylock-effects # Screenlock
    swww # wallpaper
    thunderbird
    revolt-desktop

    xdg-desktop-portal-hyprland
    xdg-utils
    xorg.xeyes
    xfce.thunar
    xournalpp
    vscode
    waybar # status bar
    wireplumber # sound
    wdisplays
    wireshark
    wl-clipboard # clipboard
    wlogout # logout manager
    wofi # app launchers
    yuzu
    zathura # PDF viewer
  ];

}
