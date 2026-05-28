{ self, inputs, ... }:
{
  flake.nixosModules.de =
  { config, lib, ... }:
  {
    options =
    {
      plasma.enable = lib.mkEnableOption "plasma";
    };
    
    config = lib.mkIf config.plasma.enable
    {
      services.desktopManager.plasma6.enable = true;
      environment.variables = {
        KWIN_DRM_NO_AMS = 1; # Disables vsync in KDE
        NIXOS_OZONE_WL = 1; # Force wayland for electron
      };
    };
  };
}