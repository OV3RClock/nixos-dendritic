{ lib, ... }:
{
  imports = [
    ./gamingPkgs.nix
    ./workPkgs.nix
  ];
  
  programs.firefox.enable = true;
  programs.git.enable = true;
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      format = "$directory\n$character";
      character.format = "[ 󱞩 ](#c0caf5)";
      directory.format = "[](fg:#7aa2f7)[󰞷 ](bg:#7aa2f7 fg:#32344a)[ ](fg:#7aa2f7 bg:#32344a)[$path ](fg:#c0caf5 bg:#32344a)[](fg:#32344a)";
    };
  };
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
    ];
  };

  environment.systemPackages = with pkgs; [
    easyeffects
    fastfetch
    kitty
    linux-firmware
    mission-center
    nano
    nvd # nixos update diff tool
    obsidian
    sourcegit
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.symbols-only
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
  ];
}