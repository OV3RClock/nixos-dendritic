{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
      input = {
        keyboard = {
          model = "pc104";
          numlockOnStartup = "on";
          repeatDelay = 600;
          repeatRate = 25;
          layouts = [{
            layout = "fr";
          }];
        };
        touchpads = [{
          name = "ELAN1203:00 04F3:307A Touchpad";
          vendorId = "04f3";
          productId = "307a";
          enable = true;
          disableWhileTyping = true;
          leftHanded = false;
          middleButtonEmulation = false;
          pointerSpeed = 0;
          accelerationProfile = "default";
          scrollSpeed = 0.3;
          scrollMethod = "twoFingers";
          naturalScroll = true;
          tapToClick = true;
          tapAndDrag = false;
          tapDragLock = false;
          twoFingerTap = "rightClick";
        }];
      };
    };
  };
}