{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
      kwin = {
        nightLight = {
          enable = true;
          mode = "automatic";
          temperature.day = 6500;
          temperature.night = 4500;
        };
        effects = {
          zoom.enable = false;
          shakeCursor.enable = false;
          desktopSwitching = {
            animation = "slide";
            navigationWrapping = false;
          };
        };
        virtualDesktops = {
          rows = 2;
          names = [
            "Desktop 1"
            "Desktop 2"
            "Desktop 3"
            "Desktop 4"
          ];
        };
        borderlessMaximizedWindows = true;
        cornerBarrier = false;
        edgeBarrier = 0;
      };
    };
  };
}