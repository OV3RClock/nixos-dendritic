{ config, lib, pkgs, ... }:
{
  options = {
    hyprland.enable = lib.mkEnableOption "hyprland";
  };

  config = lib.mkIf config.hyprland.enable {
    programs.hyprland.enable = true;
    environment.systemPackages = with pkgs; [
      bibata-cursors
      brightnessctl
      file-roller
      hyprpaper
      hyprpolkitagent
      hyprpwcenter
      hyprshot
      hyprsunset
      hyprsysteminfo
      imv
      libnotify
      mission-center
      nwg-look
      papirus-icon-theme
      rofi
      tumbler
      vlc
      waybar
    ];
  };
}