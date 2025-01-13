{ config, ... }:

{
  imports = [
    ./waybar/style.nix
  ];

  programs.waybar = {
    enable = true;
    settings = {
     mainbar = {
     "layer"= "top";
      "margin-left"= 0;
      "margin-right"= 0;
      "spacing"= 0;

      # // Modules Left
      "modules-left"= [
        "custom/appmenu"
        "hyprland/window"
      ];

      # // Modules Center
      "modules-center"= [
        "hyprlnd/workspaces"
      ];

      # // Modules Right
      "modules-right"= [
        "pulseaudio"
        "backlight"
        "battery"
        "network"
        "custom/exit"
        "clock"
      ];

      # // Workspaces
      "hyperland/workspaces"= {
        "on-scroll-up"= "hyprctl dispatch workspace r-1";
        "on-scroll-down"= "hyprctl dispatch workspace r+1";
        "on-click"= "activate";
        "active-only"= false;
        "all-outputs"= true;
        "persistent-workspaces"= {
          "*"= 5;
        };
      };

      # // Hyprland Window
      "hyprland/window"= {
        "seperate-outputs"= true;
      };

      # // App Launcher
      "custom/appmenu"= {
        "format"= "Apps";
        "on-click"= "wofi --show drun";
        "tooltip-format"= "Open the application launcher";
      };

      # // Power Menu
      "custom/exit"= {
        "format"= "⏻";
        "on-click"= "wlogout";
        "tooltip-format"= "Power Menu";
      };

      # // Clock
      "clock"= {
        "format"= "{:%H:%M %a}";
        "tooltip-format"= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        "format-alt"= "{:%Y-%m-%d}";
      };

      # // Network
      "network"= {
        "format"= "{ifname}";
        "format-wifi"= "󰖩 {signalStrength}%";
        "format-ethernet"= "󰱓 {ifname}";
        "format-disconnected"= "󰅛";
        "tooltip-format"= "󰱓 {ifname} via {gwaddri}\nIP: {ipaddr}";
        "tooltip-format-disconnected"= "Disconnected";
        "max-length"= 50;
        "on-click"= "alacritty --class dotfiles-floating -e nmtui";
        "on-click-right"= "nm-connection-editor";
      };

      # // Battery
      "battery"= {
        "states"= {
          "good"= 95;
          "warning"= 30;
          "critical"= 15;
        };
        "format"= "{icon} {capacity}%";
        "format-charging"= "󰂇 {capacity}%";
        "format-icons"= [""  " "  " "  " "  " "];
      };

      # // Audio
      "pulseaudio"= {
        "format"= "{icon} {volume}%";
        "on-click"= "pavucontrol";
        "format-icons"= ["󰕿" "󰖀" "󰕾"];
      };
        
      # // backlight:
      "backlight"= {
        "format"= "{icon} {percent}%";
        "format-icons"= [
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
          ""
        ];
        "scroll-step"= 1;
      };   
      };
    };
  };
}
