{
  description = "A simple NixOS flake";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-stable,home-manager, nixvim,... }: {

    nixosConfigurations ={
      "victus" =  nixpkgs.lib.nixosSystem rec {
        specialArgs = let 
          username = "sam";
          system = "x86_64-linux";
        in {
          inherit home-manager nixvim username;

          pkgs-stable = import nixpkgs-stable {
            inherit system;
            config.allowUnfree = true;
          };
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
