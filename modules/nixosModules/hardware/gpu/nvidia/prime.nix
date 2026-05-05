{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { config, lib, ... }:
  {
    options = {
      prime.enable = lib.mkEnableOption "prime";
    };
    
    config = lib.mkIf config.prime.enable {
      hardware.nvidia.prime = {
        offload.enable = true;
        offload.enableOffloadCmd = true; # allows to use nvidia-offload [program]
        intelBusId = "PCI:0@0:2:0";
        nvidiaBusId = "PCI:1@0:0:0";
      };
    };
  };
}