{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { config, lib, pkgs, ... }:
  {
    options = {
      intelGpu.enable = lib.mkEnableOption "intelGpu";
    };

    config = lib.mkIf config.intelGpu.enable {
      hardware.graphics.enable = true;
      services.xserver.videoDrivers = ["modesetting"];
      hardware.graphics.extraPackages = [
        pkgs.intel-media-driver
      ];
    };
  };
}