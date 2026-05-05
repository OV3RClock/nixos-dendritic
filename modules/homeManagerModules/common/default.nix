{ self, inputs, ... }:
{
  flake.homeModules.commonPrograms =
  { lib, ... }:
  {
    fastfetch.enable = lib.mkDefault true;
    kitty.enable = lib.mkDefault true;
    starship.enable = lib.mkDefault true;
  };
}