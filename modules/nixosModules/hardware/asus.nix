{ config, lib, ... }:
{
  options = {
    asus.enable = lib.mkEnableOption "asus";
  };

  config = lib.mkIf config.asus.enable {
    services.asusd = {
      enable = true; # enables rog-control-center
    };
  };
}