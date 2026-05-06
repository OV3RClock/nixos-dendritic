{ self, inputs, ... }:
{
  flake.homeModules.de =
  { lib, ... }:
  {
    programs.plasma = {
      enable = true;
      overrideConfig = true;
    };
  };
}