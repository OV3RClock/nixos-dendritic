{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
      panels = [
        {
          alignment = "center";
          floating = false;
          height = 36;
          hiding = "none";
          lengthMode = "fill";
          location = "left";
          opacity = "opaque";
          screen = "all";
          widgets = [
            {
              name = "org.kde.plasma.lock_logout";
              config = {
                General = {
                  show_lockScreen = false;
                };
              };
            }
            "split-clock"
            {
              panelSpacer = {
                expanding = false;
                length = 4;
              };
            }
            {
              pager.general = {
                showWindowOutlines = true;
                showApplicationIconsOnWindowOutlines = false;
                displayedText = "none";
                selectingCurrentVirtualDesktop = "doNothing";
              };
            }
            # {
            #   panelSpacer = {
            #     expanding = false;
            #     length = 4;
            #   };
            # }
            # {
            #   name = "org.kde.plasma.systemmonitor";
            #   config = {
            #     title = "CPU °C";
            #     showTitle = true;
            #     displayStyle = "org.kde.ksysguard.piechart";
            #     sensors = [
            #       {
            #         name = "cpu/all/averageTemperature";
            #         color = "233,233,233";
            #         label = "CPU °C";
            #       }
            #     ];
            #     range = {
            #       from = 0;
            #       to = 100;
            #     };
            #   };
            # }
            # {
            #   panelSpacer = {
            #     expanding = false;
            #     length = 4;
            #   };
            # }
            # {
            #   name = "org.kde.plasma.systemmonitor";
            #   config = {
            #     title = "GPU °C";
            #     showTitle = true;
            #     displayStyle = "org.kde.ksysguard.piechart";
            #     sensors = [
            #       {
            #         name = "gpu/gpu1/temperature";
            #         color = "233,233,233";
            #         label = "GPU °C";
            #       }
            #     ];
            #     range = {
            #       from = 0;
            #       to = 100;
            #     };
            #   };
            # }
            {
              panelSpacer = {
                expanding = true;
              };
            }
            {
              iconTasks = {
                launchers = [ ];
              };
            }
            {
              panelSpacer = {
                expanding = true;
              };
            }
            {
              systemTray = {
                icons = {
                  spacing = "medium";
                  scaleToFit = false;
                };
                items.shown = [
                  "org.kde.plasma.volume"
                  "org.kde.plasma.networkmanagement"
                  "org.kde.plasma.battery"
                ];
                items.hidden = [
                  "org.kde.plasma.devicenotifier"
                  "org.kde.plasma.bluetooth"
                  "org.kde.plasma.brightness"
                  "org.kde.plasma.clipboard"
                  "org.kde.plasma.notifications"
                ];
                items.extra = [
                  "org.kde.plasma.cameraindicator"
                  "org.kde.plasma.volume"
                  "org.kde.plasma.networkmanagement"
                  "org.kde.plasma.battery"
                  "org.kde.plasma.devicenotifier"
                  "org.kde.plasma.bluetooth"
                  "org.kde.plasma.brightness"
                  "org.kde.plasma.clipboard"
                  "org.kde.plasma.notifications"
                ];
              };
            }
          ];
        }
        # {
        #   # alignment = "left";
        #   floating = false;
        #   height = 36;
        #   hiding = "none";
        #   lengthMode = "fit";
        #   location = "left";
        #   opacity = "opaque";
        #   screen = "all";
        #   widgets = [
        #     {
        #       name = "org.kde.plasma.lock_logout";
        #       config = {
        #         General = {
        #           show_lockScreen = false;
        #         };
        #       };
        #     }
        #     {
        #       digitalClock = {
        #         time.format = "24h";
        #         date.enable = false;
        #         calendar.firstDayOfWeek = "monday";
        #       };
        #     }
        #     {
        #       pager.general = {
        #         showWindowOutlines = true;
        #         showApplicationIconsOnWindowOutlines = false;
        #         # showOnlyCurrentScreen = true;
        #         displayedText = "none";
        #         selectingCurrentVirtualDesktop = "doNothing";
        #       };
        #     }
        #   ];
        # }
        # {
        #   # alignment = "right";
        #   floating = false;
        #   height = 36;
        #   hiding = "none";
        #   lengthMode = "fit";
        #   location = "left";
        #   opacity = "opaque";
        #   screen = "all";
        #   widgets = [
        #     {
        #       systemTray = {
        #         icons = {
        #           spacing = "medium";
        #           scaleToFit = false;
        #         };
        #         items.shown = [
        #           "org.kde.plasma.volume"
        #           "org.kde.plasma.networkmanagement"
        #           "org.kde.plasma.battery"
        #         ];
        #         items.hidden = [
        #           "org.kde.plasma.devicenotifier"
        #           "org.kde.plasma.bluetooth"
        #           "org.kde.plasma.brightness"
        #           "org.kde.plasma.clipboard"
        #           "org.kde.plasma.notifications"
        #         ];
        #         items.extra = [
        #           "org.kde.plasma.cameraindicator"
        #           "org.kde.plasma.volume"
        #           "org.kde.plasma.networkmanagement"
        #           "org.kde.plasma.battery"
        #           "org.kde.plasma.devicenotifier"
        #           "org.kde.plasma.bluetooth"
        #           "org.kde.plasma.brightness"
        #           "org.kde.plasma.clipboard"
        #           "org.kde.plasma.notifications"
        #         ];
        #       };
        #     }
        #   ];
        # }
      ];
    };
  };
}