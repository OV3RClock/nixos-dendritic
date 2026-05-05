{ self, inputs, ... }:
{
  flake.nixosModules.commonPrograms =
  { config, lib, pkgs, ... }:
  {
    options =
    {
      vscodium.enable = lib.mkEnableOption "vscodium";
    };
    
    config = lib.mkIf config.vscodium.enable
    {
      programs.vscode = {
        enable = true;
        package = pkgs.vscodium;
        extensions = [
          pkgs.vscode-extensions.jnoortheen.nix-ide
        ];
      };
    };
  };
}