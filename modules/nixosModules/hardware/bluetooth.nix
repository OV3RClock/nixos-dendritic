{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { config, lib, ... }:
  {
    options = {
      bluetooth.enable = lib.mkEnableOption "bluetooth";
    };

    config = lib.mkIf config.bluetooth.enable {
      hardware.bluetooth.enable = true;
    };
  };
}