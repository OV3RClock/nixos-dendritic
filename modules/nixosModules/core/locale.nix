{ self, inputs, ... }:
{
  flake.nixosModules.core = 
  { lib, ... }:
  {
    time.timeZone = lib.mkDefault "Europe/Paris";
    console.keyMap = lib.mkDefault "fr";

    i18n.defaultLocale = "en_US.UTF-8";
    i18n.extraLocales = [ "fr_FR.UTF-8/UTF-8" ];

    i18n.extraLocaleSettings = {
      LC_NUMERIC = "fr_FR.UTF-8";
      LC_TIME = "fr_FR.UTF-8";
      LC_MEASUREMENT = "fr_FR.UTF-8";
      LC_TELEPHONE = "fr_FR.UTF-8";

      # LC_ADDRESS = "en_US.UTF-8";
      # LC_MONETARY = "en_US.UTF-8";
      # LC_NAME = "en_US.UTF-8";
      # LC_PAPER = "en_US.UTF-8";

      # LC_IDENTIFICATION = "en_US.UTF-8";
      # LC_CTYPE = "en_US.UTF-8";
      # LC_MESSAGES = "en_US.UTF-8";
      # LC_COLLATE = "en_US.UTF-8";
    };
  };
}