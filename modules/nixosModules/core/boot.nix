{ self, inputs, ... }:
{
  flake.nixosModules.core = 
  {
    boot.loader = {
      systemd-boot.enable = true;
      systemd-boot.configurationLimit = 3;
      timeout = 2;
      efi.canTouchEfiVariables = true;
    };
  };
}