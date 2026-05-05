{ self, inputs, ... }:
{
  flake.nixosModules.commonPrograms =
  { config, lib, ... }:
  {
    options =
    {
      firefox.enable = lib.mkEnableOption "firefox";
    };
    
    config = lib.mkIf config.firefox.enable
    {
      programs.firefox = {
        enable = true;
      };
    };
  };
}