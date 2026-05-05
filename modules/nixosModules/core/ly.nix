{ self, inputs, ... }:
{
  flake.nixosModules.core = 
  {
    services.displayManager.ly = {
      enable = true;
      settings = {
        numlock = true;
        bigclock = "en";
        clear_password = true;
        auth_fails = 0;
        shell = true;
        xinitrc = null;
        xsessions = null;
        animation = "none"; # none, doom, matrix, colormix, gameoflife, dur_file
        colormix_col1 = "0x00000000";
        colormix_col2 = "0x00000000";
        colormix_col3 = "0x00000000";
      };
    };
  };
}