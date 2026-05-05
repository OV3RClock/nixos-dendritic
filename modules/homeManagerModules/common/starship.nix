{ self, inputs, ... }:
{
  flake.homeModules.commonPrograms =
  { config, lib, ... }:
  {
    options =
    {
      starship.enable = lib.mkEnableOption "starship";
    };
    
    config = lib.mkIf config.starship.enable
    {
      programs.starship = {
        enable = true;
        settings = {
          add_newline = true;
          format = "$directory\n$character";
          character.format = "[ 󱞩 ](#c0caf5)";
          directory.format = "[](fg:#7aa2f7)[󰞷 ](bg:#7aa2f7 fg:#32344a)[ ](fg:#7aa2f7 bg:#32344a)[$path ](fg:#c0caf5 bg:#32344a)[](fg:#32344a)";
        };
      };
    };
  };
}