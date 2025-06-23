{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    hyprpaper
    waybar
    alacritty
    foot
    neovim
    git
    zsh
    rofi-wayland
  ];

  # Load submodules
  imports = [
    ./hyprland.nix
    ./waybar.nix
  ];

  # Dotfiles
  xdg.configFile."hypr/hyprland.conf".source = ./hyprland/hyprland.conf;
  xdg.configFile."waybar/config".source = ./waybar/config;
}