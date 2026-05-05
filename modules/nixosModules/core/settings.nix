{ self, inputs, ... }:
{
  flake.nixosModules.core = 
  { lib, pkgs, ... }:
  {   
    options.settings = {
      username = lib.mkOption {
        type = lib.types.str;
        default = "user1";
      };
      hostname = lib.mkOption {
        type = lib.types.str;
        default = "user1-nixos-laptop";
      };
    };
  };
}