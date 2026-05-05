{ self, inputs, ... }:
{
  flake.homeModules.laptopConfig = 
  { osConfig, ... }:
  {
    home.username = "${osConfig.settings.username}";
    home.homeDirectory  = "/home/${osConfig.settings.username}";
    home.stateVersion = "26.05"; # do not change this
  };
}