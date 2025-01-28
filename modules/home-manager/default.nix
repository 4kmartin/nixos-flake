{ lib, config, ... }:
let
  colors = config.lib.stylix.colors;
in
{
  imports = [
    ./desktop-environment.nix
    ./oxide-shell.nix
  ];
  options = with lib; {
    color = {
      primary-color = mkOption {
        type = types.str;
        default = colors.base00;
      }; 
      accent-color = mkOption {
        type = types.str;
        default = colors.base01;
      };
      contrast-color = mkOption {
        type = types.str;
        default = colors.base02;
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
