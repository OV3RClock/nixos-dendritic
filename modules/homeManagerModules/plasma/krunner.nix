{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
      krunner = {
        activateWhenTypingOnDesktop = false;
        historyBehavior = "disabled";
        position = "center";
      };
    };
  };
}