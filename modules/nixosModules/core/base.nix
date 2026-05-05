{ self, inputs, ... }:
{
  flake.nixosModules.core = 
  { pkgs, ... }:
  {
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    nixpkgs.config.allowUnfree = true;
    # boot.kernelPackages = pkgs.linuxPackages_latest;

    system.stateVersion = "25.11"; # do not change this
  };
}