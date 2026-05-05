{ self, inputs, ... }:
{
  flake.nixosModules.workPrograms =
  { config, lib, pkgs, ... }:
  {    
    config = lib.mkIf config.vscodium.enable
    {
      programs.vscode.extensions = [
        pkgs.vscode-extensions.ms-dotnettools.csharp
        pkgs.vscode-extensions.ms-dotnettools.csdevkit
        pkgs.vscode-extensions.visualstudiotoolsforunity.vstuc
      ];
    };
  };
}