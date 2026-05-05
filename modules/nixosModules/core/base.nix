{ self, inputs, ... }:
{
  flake.nixosModules.core = 
  { pkgs, ... }:
  {
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    nixpkgs.config.allowUnfree = true;
    # boot.kernelPackages = pkgs.linuxPackages_latest;

    fonts.packages = [
      pkgs.nerd-fonts.symbols-only
      pkgs.noto-fonts
      pkgs.noto-fonts-cjk-sans
      pkgs.noto-fonts-color-emoji
    ];

    system.stateVersion = "25.11"; # do not change this
  };
}