{ lib, config, ... }:

{
  imports = [
    ./desktop-environment.nix
    ./oxide-shell.nix
  ];
  options = with lib; {
    color = {
      primary-color = mkOption {
        type = types.str;
        default = "#383C4A";
      }; 
      accent-color = mkOption {
        type = types.str;
        default = "#7C818C";
      };
      contrast-color = mkOption {
        type = types.str;
        default = "#404552";
      };
    };
    text = {
      color = mkOption {
        type = types.str;
        default = "#ffffff";
      };
      normal-font = mkOption {
        type = types.str;
        default = "sans";
      };
      mono-font = mkOption {
        type = types.str;
        default = "JetBrainsMono Nerd Font Mono";
      };
    }; 
  };
}
