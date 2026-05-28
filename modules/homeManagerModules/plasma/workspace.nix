{ self, inputs, ... }:
{
  flake.homeModules.plasma =
  { lib, ... }:
  let
    wallpaper = ./../../../assets/wallpapers/late-night.png;
  in 
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