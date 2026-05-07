{ self, inputs, ... }:
{
  flake.homeModules.de =
  { lib, ... }:
  let
    wallpaper = ./../../../assets/wallpapers/late-night.png;
  in 
  {
    programs.plasma = {
      enable = true;
      overrideConfig = false;

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

      session = {
        general.askForConfirmationOnLogout = true;
        sessionRestore.restoreOpenApplicationsOnLogin = "startWithEmptySession";
      };

      workspace = {
        enableMiddleClickPaste = false;
        clickItemTo = "select";
        wallpaper = "${wallpaper}";
      };

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
      
      krunner = {
        activateWhenTypingOnDesktop = false;
        historyBehavior = "disabled";
        position = "center";
      };

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
      
      shortcuts = {
        "services/firefox.desktop"._launch = "Meta+A";
        "services/kitty.desktop"._launch = "Meta+Q";
        "services/org.kde.krunner.desktop"._launch = "Meta+R";
        "services/org.kde.spectacle.desktop".FullScreenScreenShot = "Print";
        "services/org.kde.spectacle.desktop".ActiveWindowScreenShot = "Ctrl+Alt+Print";
        
        "services/org.kde.kscreen.desktop".ShowOSD = [ ];
        "services/systemsettings.desktop"._launch = [ ];
        "services/org.kde.plasma.emojier.desktop"._launch = [ ];
        "services/org.kde.spectacle.desktop"._launch = [ ];
        "services/org.kde.spectacle.desktop".RectangularRegionScreenShot = [ ];
        "services/org.kde.spectacle.desktop".WindowUnderCursorScreenShot = [ ];
        "services/org.kde.spectacle.desktop".RecordScreen = [ ];
        "services/org.kde.spectacle.desktop".RecordWindow = [ ];
        "services/org.kde.spectacle.desktop".RecordRegion = [ ];

        kwin."Window Close" = "Meta+C";
        kwin."Window Fullscreen" = "Meta+F";
        kwin."Switch One Desktop to the Left" = "Meta+Left";
        kwin."Switch One Desktop to the Right" = "Meta+Right";
        kwin."Switch One Desktop Up" = "Meta+Up";
        kwin."Switch One Desktop Down" = "Meta+Down";
        kwin."Window One Desktop to the Left" = "Meta+Ctrl+Left";
        kwin."Window One Desktop to the Right" = "Meta+Ctrl+Right";
        kwin."Window One Desktop Up" = "Meta+Ctrl+Up";
        kwin."Window One Desktop Down" = "Meta+Ctrl+Down";
        
        kwin."Window to Previous Screen" = [ ];
        kwin."Window to Next Screen" = [ ];
        kwin."Activate Window Demanding Attention" = [ ];
        kwin."Window Maximize" = [ ];
        kwin."Window Minimize" = [ ];
        kwin."Window Operations Menu" = [ ];
        kwin."Window Quick Tile Left" = [ ];
        kwin."Window Quick Tile Right" = [ ];
        kwin."Window Quick Tile Top" = [ ];
        kwin."Window Quick Tile Bottom" = [ ];
        kwin.disableInputCapture = [ ];
        kwin.Expose = [ ];
        kwin.ExposeAll = [ ];
        kwin.ExposeClass = [ ];
        kwin."Grid View" = [ ];
        kwin."Kill Window" = [ ];
        kwin.MoveMouseToCenter = [ ];
        kwin.MoveMouseToFocus = [ ];
        kwin.MoveZoomDown = [ ];
        kwin.MoveZoomLeft = [ ];
        kwin.MoveZoomRight = [ ];
        kwin.MoveZoomUp = [ ];
        kwin.Overview = [ ];
        kwin."Walk Through Windows" = [ ];
        kwin."Walk Through Windows (Reverse)" = [ ];
        kwin."Walk Through Windows of Current Application" = [ ];
        kwin."Walk Through Windows of Current Application (Reverse)" = [ ];
        kwin."Show Desktop" = [ ];
        kwin."Switch Window Down" = [ ];
        kwin."Switch Window Left" = [ ];
        kwin."Switch Window Right" = [ ];
        kwin."Switch Window Up" = [ ];
        kwin."Switch to Desktop 1" = [ ];
        kwin."Switch to Desktop 2" = [ ];
        kwin."Switch to Desktop 3" = [ ];
        kwin."Switch to Desktop 4" = [ ];
        kwin.TrackMouse = [ ];

        kwin.KrohnkiteSpiralLayout = "Meta+:";
        kwin.KrohnkiteColumnsLayout = "Meta+!";

        kwin.KrohnkiteFloatAll = [ ];
        kwin.KrohnkiteFocusDown = [ ];
        kwin.KrohnkiteFocusLeft = [ ];
        kwin.KrohnkiteFocusPrev = [ ];
        kwin.KrohnkiteFocusUp = [ ];
        kwin.KrohnkiteGrowHeight = [ ];
        kwin.KrohnkiteShiftDown = [ ];
        kwin.KrohnkiteShiftLeft = [ ];
        kwin.KrohnkiteShiftRight = [ ];
        kwin.KrohnkiteShiftUp = [ ];
        kwin.KrohnkiteShrinkHeight = [ ];
        kwin.KrohnkiteShrinkWidth = [ ];
        kwin.KrohnkitegrowWidth = [ ];
        kwin.KrohnkiteToggleFloat = [ ];
        kwin.KrohnkitePreviousLayout = [ ];
        kwin.KrohnkiteNextLayout = [ ];
        kwin.KrohnkiteMonocleLayout = [ ];
        kwin.KrohnkiteSetMaster = [ ];

        plasmashell."manage activities" = [ ];
        plasmashell."next activity" = [ ];
        plasmashell.show-on-mouse-pos = [ ];
      };
    };
  };
}