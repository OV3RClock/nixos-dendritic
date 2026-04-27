{ lib, ... }:
{
  imports = [
    ./commonPkgs.nix
    ./gamingPkgs.nix
    ./workPkgs.nix
  ];
  
  commonPkgs.enable = lib.mkDefault true;
}