{ self, inputs, ... }:
{
  flake.nixosModules.core = 
  { lib, ... }:
  {
    i18n.defaultLocale = "en_US.UTF-8";
    time.timeZone = lib.mkDefault "Europe/Paris";
    console.keyMap = lib.mkDefault "fr";
  };
}