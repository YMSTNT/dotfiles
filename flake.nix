{
  description = "ymstnt's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-master.url = "github:NixOS/nixpkgs/master";
    nixpkgs-develop.url = "github:ymstnt/nixpkgs/master";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
      inputs.darwin.follows = "";
    };
    nix-matlab = {
      url = "gitlab:doronbehar/nix-matlab";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-cosmic = {
      url = "github:lilyinstarlight/nixos-cosmic";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @inputs: {
    nixosConfigurations =
      let
        #inherit (self) outputs;
        mkSystem = host: nixpkgs.lib.nixosSystem {
          modules = [
            ./overlays
            home-manager.nixosModule
            host
          ];
          specialArgs = inputs;
        };
      in
      {
        andromeda = mkSystem ./hosts/andromeda;
        cassiopeia = mkSystem ./hosts/cassiopeia;
      };
      nixosModules = import ./modules;
  };
}
