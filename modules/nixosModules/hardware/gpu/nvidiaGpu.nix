{ config, lib, ... }:
{
  options = {
    nvidiaGpu.enable = lib.mkEnableOption "nvidiaGpu";
  };

  config = lib.mkIf config.nvidiaGpu.enable {
    services.xserver.videoDrivers = ["nvidia"];
    hardware.nvidia = {
      open = true;
      modesetting.enable = true;
      package = config.boot.kernelPackages.nvidiaPackages.latest;
    };
  };
}