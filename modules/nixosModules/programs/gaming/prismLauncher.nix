{ self, inputs, ... }:
{
  flake.nixosModules.gamingPrograms =
  { config, lib, pkgs, ... }:
  {
    options =
    {
      prismLauncher.enable = lib.mkEnableOption "prismLauncher";
    };
    
    config = lib.mkIf config.prismLauncher.enable
    {
      environment.systemPackages = [
        pkgs.prismlauncher
      ];
    };
  };
}