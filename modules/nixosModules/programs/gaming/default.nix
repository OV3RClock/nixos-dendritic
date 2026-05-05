{ self, inputs, ... }:
{
  flake.nixosModules.gamingPrograms =
  { lib, pkgs, ... }:
  {
    environment.systemPackages = [
      pkgs.goverlay
      pkgs.mangohud
    ];

    emulators.enable = lib.mkDefault true;
    prismLauncher.enable = lib.mkDefault true;
    steam.enable = lib.mkDefault true;
  };
}