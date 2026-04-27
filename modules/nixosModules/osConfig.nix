{ config, lib, hostname, ... }:
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  
  boot.loader = {
    systemd-boot.enable = true;
    systemd-boot.configurationLimit = 3;
    timeout = 2;
    efi.canTouchEfiVariables = true;
  };

  services.displayManager.ly = {
    enable = true;
    settings = {
      numlock = true;
      bigclock = "en";
      clear_password = true;
      auth_fails = 0;
      animation = "none"; # none, doom, matrix, colormix, gameoflife, dur_file
      colormix_col1 = "0x00000000";
      colormix_col2 = "0x00000000";
      colormix_col3 = "0x00000000";
    };
  };

  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.UTF-8";
  console.keyMap = lib.mkDefault "fr";

  users.users = {
    valentin = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };
  };

  services.pipewire.enable = lib.mkDefault true;
  services.pipewire.pulse.enable = lib.mkDefault true;
  hardware.bluetooth.enable = lib.mkDefault true;
  networking = {
    networkmanager.enable = lib.mkDefault true;
    firewall.enable = lib.mkDefault true;
    hostName = hostname;
  };

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
    };
  };

  system.stateVersion = "25.11"; # do not change this
}