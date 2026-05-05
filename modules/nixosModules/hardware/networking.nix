{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { config, lib, ... }:
  {
    options = {
      networking.enable = lib.mkEnableOption "networking";
    };

    config = lib.mkIf config.networking.enable {
      networking = {
        networkmanager.enable = true;
        firewall.enable = true;
        hostName = "${config.settings.hostname}";
      };
    };
  };
}