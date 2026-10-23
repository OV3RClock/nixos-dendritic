{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
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