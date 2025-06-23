{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    waybar
    jq              # for scripting
    playerctl       # media control integration
    pamixer         # audio volume
    brightnessctl   # backlight control
  ];

  xdg.configFile."waybar/config".source = ./waybar/config;
  xdg.configFile."waybar/style.css".source = ./waybar/style.css;
}