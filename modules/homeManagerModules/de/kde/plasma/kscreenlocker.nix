{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, wallpaper, ... }:
  {
    programs.plasma = {
      kscreenlocker = {
        autoLock = true;
        timeout = 1;
        lockOnResume = true;
        passwordRequired = true;
        passwordRequiredDelay = 5;
        appearance = {
          alwaysShowClock = true;
          showMediaControls = false;
          wallpaper = "${wallpaper}";
        };
      };
    };
  };
}