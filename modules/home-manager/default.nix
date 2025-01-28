{ lib, config, pkgs, ... }:
let
  colors = config.lib.stylix.colors.withHashtag;
  fonts = config.stylix.fonts;
in
{
  imports = [
    ./desktop-environment.nix
    ./terminal.nix
  ];
  options = with lib; {
    color = {
      primary-color = mkOption {
        type = types.str;
        default = colors.base00;
      }; 
      accent-color = mkOption {
        type = types.str;
        default = colors.base0A;
      };
      contrast-color = mkOption {
        type = types.str;
        default = colors.base02;
      };
    };
    text = {
      color = mkOption {
        type = types.str;
        default = colors.base0C;
      };
      normal-font = mkOption {
        type = types.str;
        default = fonts.sansSerif.name;
      };
      mono-font = mkOption {
        type = types.str;
        default = fonts.monospace.name;
      };
    }; 
  };
  config = {
  
    stylix = {
      polarity = "dark";
  
      fonts = {
        serif = {
          package = pkgs.dejavu_fonts;
          name = "DejaVu Serif";
        };
        sansSerif = {
          package = pkgs.dejavu_fonts;
          name = "DejaVu Sans";
        };
        monospace = {
          package = pkgs.nerd-fonts.jetbrains-mono;
          name = "JetBrainsMono Nerd Font Mono";
        };
      };
      
      opacity = {
        desktop = 0.0;
        terminal = 0.9;
      };
    };
    
    programs.kitty.enable = true;
  };
}
