{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixcord = {
      url = "github:kaylorben/nixcord";
    };

    awww.url = "git+https://codeberg.org/LGFae/awww";
  };

  outputs = { self, nixpkgs, nixpkgs-stable,home-manager, ... }@inputs: {

    nixosConfigurations ={
      "victus" =  nixpkgs.lib.nixosSystem rec {
        specialArgs = let 
          username = "sam";
          system = "x86_64-linux";
        in {
          pkgs-stable = import nixpkgs-stable {
            stdenv.hostPlatfom.system = system;
            config.allowUnfree = true;
          };

          inherit inputs username;
        };
        modules = [
          ./nixos-victus/configuration.nix

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = specialArgs;

              home-manager.users.sam = import ./home-manager/home.nix;

            }
        ];
      }; 
    }; 
  };
}
