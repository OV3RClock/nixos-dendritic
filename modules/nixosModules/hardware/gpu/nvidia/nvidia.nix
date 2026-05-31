{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { config, lib, ... }:
  {
    options = {
      nvidiaGpu.enable = lib.mkEnableOption "nvidiaGpu";
    };

    config = lib.mkIf config.nvidiaGpu.enable {
      hardware.graphics.enable = true;
      services.xserver.videoDrivers = ["nvidia"];
      hardware.nvidia = {
        open = true;
        modesetting.enable = true;
        nvidiaSettings = false;
        package = config.boot.kernelPackages.nvidiaPackages.latest;
      };
    };
  };
}