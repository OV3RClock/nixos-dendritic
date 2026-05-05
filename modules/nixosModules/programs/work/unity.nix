{ self, inputs, ... }:
{
  flake.nixosModules.workPrograms =
  { config, lib, pkgs, ... }:
  {
    options =
    {
      unity.enable = lib.mkEnableOption "unity";
    };
    
    config = lib.mkIf config.unity.enable
    {
      environment.systemPackages = [
        pkgs.unityhub
      ];
    };
  };
}