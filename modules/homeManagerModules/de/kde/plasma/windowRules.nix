{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  {
    programs.plasma = {
      window-rules = [
        {
          description = "Vsync nuker";
          match = {
            window-types = [
              "normal"
              "desktop"
              "osd"
            ];
          };
          apply = {
            adaptivesync = {
              value = false;
              apply = "force";
            };
            adaptivesyncrule = {
              value = 2;
              apply = "force";
            };
            tearingrule = {
              value = 2;
              apply = "force";
            };
          };
        }
        {
          description = "Minimum window size";
          match = {
            window-types = [
              "normal"
            ];
          };
          apply = {
            minsize = {
              value = "0,0";
              apply = "force";
            };
          };
        }
      ];
    };
  };
}