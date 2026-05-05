{ self, inputs, ... }:
{
  flake.nixosModules.de =
  { pkgs, ... }:
  {
    fonts = {
      packages = [
        pkgs.nerd-fonts.symbols-only
        pkgs.noto-fonts
        pkgs.noto-fonts-cjk-sans
        pkgs.noto-fonts-color-emoji
      ];

      fontconfig = {
        enable = true;
        antialias = true;
        hinting = {
          enable = true;
          style = "slight"; # "none", "slight", "medium", "full"
        };
        subpixel = {
          rgba = "none"; # "none", "rgb", "bgr", "vrgb", "vbgr"
          lcdfilter = "none"; # "none", "default", "light", "legacy"
        };
        defaultFonts = {
          serif = [ "DejaVu Serif" ];
          sansSerif = [ "DejaVu Sans" ];
          monospace = [ "DejaVu Sans Mono" ];
          emoji = [ "Noto Color Emoji" ];
        };
      };
    };
  };
}