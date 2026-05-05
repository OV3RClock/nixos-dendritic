{ self, inputs, ... }:
{ 
  flake.nixosModules.core = 
  { config, pkgs, ... }:
  {    
    programs.bash = {
      enable = true;
      # interactiveShellInit = "eval \"fastfetch\"\neval \"$(starship init bash)\"";
      interactiveShellInit = "fastfetch\neval \"$(starship init bash)\"";
    };
    
    users = {
      defaultUserShell = pkgs.bash;
      users = {
        "${config.settings.username}" = {
          isNormalUser = true;
          extraGroups = [ "wheel" ];
          useDefaultShell = true;
        };
      };
    };

    security.sudo.enable = false;
    security.sudo-rs = {
      enable = true;
      execWheelOnly = true;
    };
  };
}