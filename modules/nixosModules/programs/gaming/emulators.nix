{ self, inputs, ... }:
{
  flake.nixosModules.gamingPrograms =
  { config, lib, pkgs, ... }:
  {
    options =
    {
      emulators.enable = lib.mkEnableOption "emulators";
    };
    
    config = lib.mkIf config.emulators.enable
    {
      environment.systemPackages = [
        pkgs.azahar
        pkgs.cemu
      ];
    };
  };
}