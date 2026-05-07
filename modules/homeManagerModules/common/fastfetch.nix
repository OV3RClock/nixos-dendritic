{ self, inputs, ... }:
{
  flake.homeModules.commonPrograms =
  { config, lib, ... }:
  {
    options =
    {
      fastfetch.enable = lib.mkEnableOption "fastfetch";
    };
    
    config = lib.mkIf config.fastfetch.enable
    {
      programs.fastfetch = {
        enable = true;
        settings = {
          display = {
            separator = " ";
            color = {
              title = "#7aa2f7";
              keys = "#32344a";
            };
          };
          logo = {
            source = ./../../../assets/logos/therion-coin.gif;
            type = "kitty-icat";
            width = 30;
          };
          modules = [
            {
              key = "╭───────────╮";
              type = "custom";
            }
            {
              key = "│ {#title} user   {#keys} │";
              type = "title";
              format = "{user-name}@{host-name}";
            }
            {
              key = "│ {#title}󰣇 os     {#keys} │";
              type = "os";
            }
            {
              key = "│ {#title} wm     {#keys} │";
              type = "wm";
            }
            {
              key = "│ {#title} term   {#keys} │";
              type = "terminal";
            }
            {
              key = "│ {#title}󰏗 pckgs  {#keys} │";
              type = "packages";
            }
            {
              key = "├───────────┤";
              type = "custom";
            }
            {
              key = "│ {#title}󰍹 display{#keys} │";
              type = "display";
              format = "{1}x{2} @ {3}Hz";
            }
            {
              key = "│ {#title}󰍛 cpu    {#keys} │";
              type = "cpu";
              format = "{1} {7}";
            }
            {
              key = "│ {#title}󰊴 gpu    {#keys} │";
              type = "gpu";
              format = "{1} {2} ({6})";
            }
            {
              key = "│ {#title} memory {#keys} │";
              type = "memory";
              format = "{1} / {2}";
            }
            {
              key = "│ {#title}󰉉 disk   {#keys} │";
              type = "disk";
              folders = "/";
              format = "{1} / {2}";
            }
            {
              key = "├───────────┤";
              type = "custom";
            }
            {
              key = "│ {#title} colors {#keys} │";
              type = "colors";
              symbol = "circle";
            }
            {
              key = "╰───────────╯";
              type = "custom";
            }
          ];
        };
      };
    };
  };
}