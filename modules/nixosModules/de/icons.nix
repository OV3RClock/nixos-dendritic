{ self, inputs, ... }:
{
  flake.nixosModules.de =
  { pkgs, ... }:
  {
    environment.systemPackages = [
      pkgs.papirus-icon-theme
    ];
  };
}