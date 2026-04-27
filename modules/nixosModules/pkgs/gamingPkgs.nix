{ config, lib, pkgs, ... }:
{
  options = {
    gamingPkgs.enable = lib.mkEnableOption "gamingPkgs";
  };

  config = lib.mkIf config.gamingPkgs.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      # extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

    environment.systemPackages = with pkgs; [
      azahar
      cemu
      mangohud
      prismlauncher
    ];
  };
}