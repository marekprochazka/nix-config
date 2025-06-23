{ config, pkgs, ... }:

{
  # Additional Hyprland-related tools (Hyprland itself is layered via rpm-ostree)
  home.packages = with pkgs; [
    hyprpaper         # wallpaper daemon
    rofi-wayland      # app launcher
    wl-clipboard      # clipboard utils
    swaylock-effects  # lock screen (optional)
    grim              # screenshot tool
    slurp             # region selector
    foot              # terminal emulator
  ];

  xdg.configFile."hypr/hyprland.conf".source = ./hyprland/hyprland.conf;

  # Optional: other config files
  xdg.configFile."hypr/hyprpaper.conf".source = ./hyprland/hyprpaper.conf;
}