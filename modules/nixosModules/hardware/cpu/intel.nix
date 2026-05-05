{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { config, lib, ... }:
  {
    options = {
      intelCpu.enable = lib.mkEnableOption "intelCpu";
    };

    config = lib.mkIf config.intelCpu.enable {
      hardware.cpu.intel.updateMicrocode = true;
      services.thermald.enable = true;
    };
  };
}