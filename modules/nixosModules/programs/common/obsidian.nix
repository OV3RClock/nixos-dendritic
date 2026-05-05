{ self, inputs, ... }:
{
  flake.nixosModules.commonPrograms =
  { config, lib, pkgs, ... }:
  {
    options =
    {
      obsidian.enable = lib.mkEnableOption "obsidian";
    };
    
    config = lib.mkIf config.obsidian.enable
    {
      environment.systemPackages = [
        pkgs.obsidian
      ];
    };
  };
}