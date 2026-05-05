{ self, inputs, ... }:
{
  flake.nixosModules.workPrograms =
  { lib, pkgs, ... }:
  {
    unity.enable = lib.mkDefault true;
  };
}