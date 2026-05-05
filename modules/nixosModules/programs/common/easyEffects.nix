{ self, inputs, ... }:
{
  flake.nixosModules.commonPrograms =
  { config, lib, pkgs, ... }:
  {
    options =
    {
      easyEffects.enable = lib.mkEnableOption "easyEffects";
    };
    
    config = lib.mkIf config.easyEffects.enable
    {
      environment.systemPackages = [
        pkgs.easyeffects
      ];
    };
  };
}