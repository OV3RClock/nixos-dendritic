{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { config, lib, ... }:
  {
    options = {
      touchpad.enable = lib.mkEnableOption "touchpad";
    };

    config = lib.mkIf config.touchpad.enable {
      services.libinput.enable = true;
    };
  };
}