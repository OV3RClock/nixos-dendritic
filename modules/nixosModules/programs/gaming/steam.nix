{ self, inputs, ... }:
{
  flake.nixosModules.gamingPrograms =
  { config, lib, pkgs, ... }:
  {
    options =
    {
      steam.enable = lib.mkEnableOption "steam";
    };
    
    config = lib.mkIf config.steam.enable
    {
      programs.steam = {
        enable = true;
        remotePlay.openFirewall = true;
        # extraCompatPackages = [ pkgs.proton-ge-bin ];
      };
    };
  };
}