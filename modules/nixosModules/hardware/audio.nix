{ self, inputs, ... }:
{
  flake.nixosModules.hardware = 
  { config, lib, ... }:
  {
    options = {
      audio.enable = lib.mkEnableOption "audio";
    };

    config = lib.mkIf config.audio.enable {
      services.pipewire.enable = true;
      services.pipewire.pulse.enable = true;
    };
  };
}