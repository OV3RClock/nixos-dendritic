{ config, lib, pkgs, ... }:
{
  options = {
    workPkgs.enable = lib.mkEnableOption "workPkgs";
  };

  config = lib.mkIf config.workPkgs.enable {
    programs.vscode.extensions = with pkgs.vscode-extensions; [
      ms-dotnettools.csharp
      ms-dotnettools.csdevkit
      visualstudiotoolsforunity.vstuc
    ];

    environment.systemPackages = with pkgs; [
      unityhub
    ];
  };
}