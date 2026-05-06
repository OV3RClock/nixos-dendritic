{ self, inputs, ... }:
let 
  laptopHostname = "over-nixos-laptop";
  laptopUsername = "valentin";
in 
{
  flake.nixosConfigurations = {
    "${laptopHostname}" = inputs.nixpkgs.lib.nixosSystem
    {
      modules = [
        self.nixosModules.laptopConfig
        self.nixosModules.core
        self.nixosModules.hardware
        self.nixosModules.de
        self.nixosModules.commonPrograms
        self.nixosModules.gamingPrograms
        self.nixosModules.workPrograms
        self.nixosModules.homeManager
      ];
    };
  };
  
  flake.nixosModules.laptopConfig = {
    # SETTINGS
    settings.hostname = "${laptopHostname}";
    settings.username = "${laptopUsername}";

    # HARDWARE
    intelCpu.enable = true;
    intelGpu.enable = true;
    nvidiaGpu.enable = true;
    prime.enable = true;
    touchpad.enable = true;

    # DESKTOP ENVIRONMENT
    kde.enable = true;

    # HOME MANAGER
    home-manager.users = 
    {
      "${laptopUsername}" = {
        imports = [
          self.homeModules.laptopConfig
          self.homeModules.de
          self.homeModules.commonPrograms
        ];
      };
    };
  };
}