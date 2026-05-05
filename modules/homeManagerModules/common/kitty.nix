{ self, inputs, ... }:
{
  flake.homeModules.commonPrograms =
  { config, lib, ... }:
  {
    options =
    {
      kitty.enable = lib.mkEnableOption "kitty";
    };
    
    config = lib.mkIf config.kitty.enable
    {
      programs.kitty = {
        enable = true;
        settings = {
          confirm_os_window_close = 0;
          background_opacity = 0.90;
          cursor_trail = 1;
          cursor_shape = "beam";
          cursor_shape_unfocused = "unchanged";
          window_padding_width = 16;
        };
        keybindings = {
          "ctrl+c" = "copy_and_clear_or_interrupt";
          "ctrl+v" = "paste_from_clipboard";
        };
        themeFile = "tokyo_night_night";
      };
    };
  };
}