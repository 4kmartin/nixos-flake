{ ... }:
let 
  terminal = "kitty";
  file_explorer = "dolphin";
  menu = "wofi --show drun";
in
{
  imports = [
    ./hyprland/binds.nix
    ./hyprland/animations.nix
    ./hyprland/input.nix
    ./hyprland/autostart.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
  
    settings  = {

      "$terminal" = terminal;
      "$files" = file_explorer;
      "$menu" = menu;

      monitor = ",preferred, auto, auto";

      env = [
        "XCURSOR_SIZE, 24"
        "HYPRCURSOR_SIZE, 24"
      ];

      debug = {
        disable_logs=false;
      };
      
      general = {
        gaps_in = 5;
        gaps_out = 20;

        border_size = 2;

        # "col.active_border" =  "rgba(33ccffee) rgba(00ff99ee) 45deg";
        # "col.inactive_border" = "rgba(595959aa)";
        
        resize_on_border = false;
        allow_tearing = false;

        layout = "dwindle";
      };
      
      decoration = {
        rounding = 10;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        # drop_shadow = true;
        # shadow_range = 4;
        # shadow_render_power = 3;
        # "col.shadow" = "rgba(1a1a1aee)";

        blur = {
          enabled = true;
          size = 10;
          passes = 3;
          new_optimizations = true;
          ignore_opacity = true;

          vibrancy = 0.1696;
        };
      };
        
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master.new_status = "master";

      misc = {
        force_default_wallpaper = 1;
        disable_hyprland_logo = true;
      };
            
      windowrulev2 = "suppressevent maximize, class:.*";
    };
  };
}
