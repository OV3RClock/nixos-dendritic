{ config, lib, pkgs, ... }:
{
  options = {
    intelGpu.enable = lib.mkEnableOption "intelGpu";
  };

  config = lib.mkIf config.intelGpu.enable {
    services.xserver.videoDrivers = ["modesetting"];
    hardware.graphics.extraPackages = with pkgs; [
      intel-media-driver
    ];
  };
}