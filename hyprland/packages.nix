{ config, pkgs, inputs, ... }:
{
  # TODO: extra packages of hyprland
  environment.systemPackages = with pkgs; [
    dolphin
    yarn
    transmission-qt
    gum
    rsync
    swayidle
    pywal
    killall
    cliphist
    swayimg
    eza
    bat
    bind
    traceroute
    pandoc
    p7zip
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
    openrgb
    wlr-randr
    playerctl
    polkit
    libsForQt5.polkit-kde-agent # authentication agent
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
    android-tools
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
    rofi # app launchers
    yuzu
    zathura # PDF viewer
  ];

}
