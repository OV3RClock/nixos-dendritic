{ config, lib, hostname, ... }:
{
  options = {
    networking.enable = lib.mkEnableOption "networking";
  };

  config = lib.mkIf config.networking.enable {
    networking = {
      networkmanager.enable = true;
      firewall.enable = true;
      hostName = hostname;
    };
  };
}