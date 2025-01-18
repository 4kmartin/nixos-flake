{ config, pkgs, lib, ... }:

{
  imports = [
    ./desktop-environment/hyprland.nix
    # ./desktop-environment/hyprpaper.nix
    ./desktop-environment/wofi.nix
    ./desktop-environment/waybar.nix
  ];

  options.desktop = with lib; {
    wallpaperPath = mkOption {
      type = types.path;
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
