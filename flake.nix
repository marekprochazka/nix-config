{
  description = "Mark Walker's workstation configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    homeConfigurations = {
      mw = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          system = "x86_64-linux";
        };

        # This is the important fix — everything goes in configuration
        configuration = {
          home.username = "mw";
          home.homeDirectory = "/home/mw";

          # Include your actual config from a separate file (optional)
          imports = [ ./home/default.nix ];
        };
      };
    };
  };
}