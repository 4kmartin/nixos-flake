{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "dunst"
      "wl-paste --watch cliphist store"
      "waybar"
      "hyprpaper"
    ];
    
  };
}
