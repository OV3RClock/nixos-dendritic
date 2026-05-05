{ self, inputs, ... }:
{
  flake.nixosModules.de =
  { pkgs, ... }:
  {
    # fonts.packages = [
    #   pkgs.nerd-fonts.symbols-only
    #   pkgs.noto-fonts
    #   pkgs.noto-fonts-cjk-sans
    #   pkgs.noto-fonts-color-emoji
    # ];
  };
}