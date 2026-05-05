{
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    import-tree = {
      url = "github:vic/import-tree";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };

  outputs = inputs:
  let
    inherit (inputs.nixpkgs) lib;
    inherit (lib.fileset) toList fileFilter;
    isNixModule = file: file.hasExt "nix" && file.name != "flake.nix";
    importTree = path: toList (fileFilter isNixModule path);
  in
    inputs.flake-parts.lib.mkFlake { inherit inputs; }
    {
      systems = ["x86_64-linux"];
      imports = importTree ./.;
    };
}