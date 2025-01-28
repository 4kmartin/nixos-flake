{ lib, config, pkgs, ... }:
let
  colors = config.lib.stylix.colors.withHashtag;
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
      
    };
    
    programs.kitty.enable = true;
  };
}
