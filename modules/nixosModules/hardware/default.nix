{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { lib, ... }:
  {
    hardware.enableRedistributableFirmware = true;

    audio.enable = lib.mkDefault true;
    bluetooth.enable = lib.mkDefault true;
    networking.enable = lib.mkDefault true;
  };
}