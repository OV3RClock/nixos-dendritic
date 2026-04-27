{ config, lib, ... }:
{
  options = {
    kde.enable = lib.mkEnableOption "kde";
  };

  config = lib.mkIf config.kde.enable {
    services.desktopManager.plasma6.enable = true;
    environment.variables = {
      KWIN_DRM_NO_AMS = 1; # Disables vsync in KDE
      NIXOS_OZONE_WL = 1; # Force wayland for electron
    };
  };
}