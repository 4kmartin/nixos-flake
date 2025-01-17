{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-mananager = {
      url= "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix";
    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, stylix, home-manager, hyprland, ... }@inputs: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    user = "_pennyone";
  in
  {
    nixosConfigurations.galp4 = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs;};
      modules = [
        ./galp4/configuration.nix
        stylix.nixosModules.stylix
      ];
    };
    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;

      modules = [
        ./galp4/home.nix
        {
          wayland.windowManager.hyprland = {
            enable = true;
            package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
          };
        }
      ];
      
    };
  };
}
