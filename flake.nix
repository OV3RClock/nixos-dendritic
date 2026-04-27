{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    plasma-manager.url = "github:nix-community/plasma-manager";
    plasma-manager.inputs.nixpkgs.follows = "nixpkgs";
    plasma-manager.inputs.home-manager.follows = "home-manager";
  };

  outputs = { nixpkgs, home-manager, plasma-manager, ... } @ inputs:
  let
    pcHostname = "over-nixos-pc";
    laptopHostname = "over-nixos-laptop";
  in {
    nixosConfigurations = {
      "${pcHostname}" = nixpkgs.lib.nixosSystem
      {
        specialArgs = {
          inherit inputs;
          hostname = "${pcHostname}";
        };
        system = "x86_64-linux";
        modules = [
          ./hosts/pc
          ./modules/nixosModules
        ];
      };
      
      "${laptopHostname}" = nixpkgs.lib.nixosSystem
      {
        specialArgs = {
          inherit inputs;
          hostname = "${laptopHostname}";
        };
        system = "x86_64-linux";
        modules = [
          ./hosts/laptop
          ./modules/nixosModules
        ];
      };
    };
  };
}