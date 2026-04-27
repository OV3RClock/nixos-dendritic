{ lib, ... }:
{
  imports = [
    ./cpu
    ./gpu
    ./asus.nix
    ./audio.nix
    ./bluetooth.nix
    ./networking.nix
    ./touchpad.nix
  ];

  audio.enable = lib.mkDefault true;
  bluetooth.enable = lib.mkDefault true;
  networking.enable = lib.mkDefault true;
}