{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
      enable = true;
      overrideConfig = false;
    };
  };
}