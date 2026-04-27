{ lib, ... }:
{
  imports = [
    ./nvidiaGpu.nix
    ./intelGpu.nix
    ./nvidia/prime.nix
  ];

  hardware.graphics.enable = lib.mkDefault true;
}