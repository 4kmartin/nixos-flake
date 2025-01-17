{ config, pkgs, lib, ... }:

{
  imports = [
    ./desktop-environment/hyprland.nix
    ./desktop-environment/hyprpaper.nix
    ./desktop-environment/wofi.nix
    ./desktop-environment/waybar.nix
  ];

  options.desktop = with lib; {
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
      wallpaper-path = mkOption {
        type = types.path;
      };
    };
  };

  config = {
    home.sessionVariables = {
      QT_QPA_PLATFORM = "wayland";
      SDL_VIDEODRIVER = "wayland";
      XDG_SESSION_TYPE = "wayland";
    };
  };
}
