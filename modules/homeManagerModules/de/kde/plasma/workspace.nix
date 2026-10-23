{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, wallpaper, ... }:
  {
    programs.plasma = {
      workspace = {
        enableMiddleClickPaste = false;
        clickItemTo = "select";
        wallpaper = "${wallpaper}";
      };   
    };
  };
}