{ self, inputs, ... }:
{
  flake.nixosModules.commonPrograms =
  { config, lib, pkgs, ... }:
  {    
    environment.systemPackages = [
      pkgs.linux-firmware
      pkgs.mission-center
      pkgs.nvd
    ];
    
    easyEffects.enable = lib.mkDefault config.audio.enable;
    firefox.enable = lib.mkDefault true;
    git.enable = lib.mkDefault true;
    obsidian.enable = lib.mkDefault true;
    vscodium.enable = lib.mkDefault true;
  };
}