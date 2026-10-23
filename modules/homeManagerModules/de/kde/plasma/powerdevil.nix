{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
      powerdevil = {
        AC = {
          powerButtonAction = "nothing";
          autoSuspend.action = "nothing";
          whenLaptopLidClosed = "doNothing";
          dimDisplay.enable = false;
          turnOffDisplay.idleTimeout = 120;
          turnOffDisplay.idleTimeoutWhenLocked = 30;
          dimKeyboard.enable = true;
          inhibitLidActionWhenExternalMonitorConnected = true;
        };
        battery = {
          powerButtonAction = "nothing";
          autoSuspend.action = "nothing";
          whenLaptopLidClosed = "sleep";
          dimDisplay.enable = false;
          turnOffDisplay.idleTimeout = 120;
          turnOffDisplay.idleTimeoutWhenLocked = 30;
          dimKeyboard.enable = true;
          inhibitLidActionWhenExternalMonitorConnected = true;
        };
        lowBattery = {
          powerButtonAction = "nothing";
          autoSuspend.action = "nothing";
          whenLaptopLidClosed = "sleep";
          dimDisplay.enable = false;
          turnOffDisplay.idleTimeout = 120;
          turnOffDisplay.idleTimeoutWhenLocked = 30;
          dimKeyboard.enable = true;
          inhibitLidActionWhenExternalMonitorConnected = true;
          powerProfile = "powerSaving";
        };
      };
    };
  };
}