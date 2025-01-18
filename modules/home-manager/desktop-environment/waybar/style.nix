{ config, ... }:
let
  background = config.color.accent-color;
  background_light = config.color.contrast-color;
  background_dark = config.color.primary-color;
  font = config.text.normal-font;
  text-color = config.text.color;
  border-color= "#000000";
in
{
  programs.waybar.style = ''
    * {
        font-family: ${font};
        border: none;
        border-radius: 0px;
    }

    window#waybar {
        background-color: ${background};
        border-bottom: 0px solid ${border-color};
        background: transparent;
        transition-property: background-color;
        transition-duration: 0.5s;
    }

    /* -----------------------------------------------------
     * Workspaces 
     * ----------------------------------------------------- */

    #workspaces {
        background: ${background};
        margin: 2px 1px 3px 1px;
        padding: 1px;
        border-radius: 15px;
        border: 0px;
        font-weight: bold;
        font-style: normal;
        opacity: 0.8;
        font-size: 16px;
        color: ${text-color};
    }

    #workspaces button {
        padding: 0px 5px;
        margin: 4px 3px;
        border-radius: 15px;
        border: 0px;
        color: ${text-color};
        background-color: ${background};
        transition: all 0.3s ease-in-out;
        opacity: 0.4;
    }

    #workspaces button.active {
        color: ${text-color};
        background: ${background};
        border-radius: 15px;
        min-width: 40px;
        transition: all 0.3s ease-in-out;
        opacity:1.0;
    }

    #workspaces button:hover {
        color: ${text-color};
        background: ${background};
        border-radius: 15px;
        opacity:0.7;
    }

    /* -----------------------------------------------------
     * Tooltips
     * ----------------------------------------------------- */

    tooltip {
        border-radius: 10px;
        background-color: ${background_dark};
        opacity:0.8;
        padding:20px;
        margin:0px;
    }

    tooltip label {
        color: ${text-color}
    }

    /* -----------------------------------------------------
     * Window
     * ----------------------------------------------------- */

    #window {
        background: ${background_light};
        margin: 5px 15px 5px 0px;
        padding: 2px 10px 0px 10px;
        border-radius: 12px;
        color:@textcolor2;
        font-size:16px;
        font-weight:normal;
        opacity:0.8;
    }

    window#waybar.empty #window {
        background-color:transparent;
    }

    /* -----------------------------------------------------
     * Taskbar
     * ----------------------------------------------------- */

    #taskbar {
        background: ${background_light};
        margin: 3px 15px 3px 0px;
        padding:0px;
        border-radius: 15px;
        font-weight: normal;
        font-style: normal;
        opacity:0.8;
        border: 3px solid ${background_light};
    }

    #taskbar button {
        margin:0;
        border-radius: 15px;
        padding: 0px 5px 0px 5px;
    }

    #taskbar.empty {
        background:transparent;
        border:0;
        padding:0;
        margin:0;
    }

    /* -----------------------------------------------------
     * Modules
     * ----------------------------------------------------- */

    .modules-left > widget:first-child > #workspaces {
        margin-left: 0;
    }

    .modules-right > widget:last-child > #workspaces {
        margin-right: 0;
    }

    /* -----------------------------------------------------
     * Idle Inhibator
     * ----------------------------------------------------- */

    #idle_inhibitor {
        margin-right: 15px;
        font-size: 22px;
        font-weight: bold;
        opacity: 0.8;
        color: ${text-color};
    }

    #idle_inhibitor.activated {
        margin-right: 15px;
        font-size: 20px;
        font-weight: bold;
        opacity: 0.8;
        color: ${background_dark};
    }

    /* -----------------------------------------------------
     * Custom Modules
     * ----------------------------------------------------- */

    #custom-appmenu {
        background-color: ${background_dark};
        font-size: 16px;
        color: ${text-color};
        border-radius: 15px;
        padding: 0px 10px 0px 10px;
        margin: 3px 17px 3px 14px;
        opacity:0.8;
        border:3px solid ${border-color};
    }

    /* -----------------------------------------------------
     * Custom Exit
     * ----------------------------------------------------- */

    #custom-exit {
        margin: 0px 13px 0px 0px;
        padding:0px;
        font-size:20px;
        color: ${text-color};
        opacity: 0.8;
    }


    /* -----------------------------------------------------
     * Clock
     * ----------------------------------------------------- */

    #clock {
        background-color: ${background_dark};
        font-size: 16px;
        color: ${text-color};
        border-radius: 15px;
        padding: 1px 10px 0px 10px;
        margin: 3px 15px 3px 0px;
        opacity:0.8;
        border:3px solid ${border-color};   
    }

    /* -----------------------------------------------------
     * Backlight
     * ----------------------------------------------------- */

    #backlight {
        background-color: ${background_light};
        font-size: 16px;
        color: ${text-color};
        border-radius: 15px;
        padding: 2px 10px 0px 10px;
        margin: 5px 15px 5px 0px;
        opacity:0.8;
    }

    /* -----------------------------------------------------
     * Pulseaudio
     * ----------------------------------------------------- */

    #pulseaudio {
        background-color: ${background_light};
        font-size: 16px;
        color: ${text-color};
        border-radius: 15px;
        padding: 2px 10px 0px 10px;
        margin: 5px 15px 5px 0px;
        opacity:0.8;
    }

    #pulseaudio.muted {
        background-color: ${background_light};
        color: ${text-color};
    }

    /* -----------------------------------------------------
     * Network
     * ----------------------------------------------------- */

    #network {
        background-color: ${background_light};
        font-size: 16px;
        color: ${text-color};
        border-radius: 15px;
        padding: 2px 10px 0px 10px;
        margin: 5px 15px 5px 0px;
        opacity:0.8;
    }

    #network.ethernet {
        background-color: ${background_light};
        color: ${text-color};
    }

    #network.wifi {
        background-color: ${background_light};
        color: ${text-color};
    }    
    
    /* -----------------------------------------------------
     * Battery
     * ----------------------------------------------------- */

    #battery {
        background-color: ${background_light};
        font-size: 16px;
        color: ${text-color};
        border-radius: 15px;
        padding: 2px 15px 0px 10px;
        margin: 5px 15px 5px 0px;
        opacity:0.8;
    }

    #battery.charging, #battery.plugged {
        color: ${text-color};
        background-color: ${background_light};
    }

    @keyframes blink {
        to {
            background-color: ${background_light};
            color: ${text-color};
        }
    }

    #battery.critical:not(.charging) {
        background-color: ${background_light};
        color: @textcolor3;
        animation-name: blink;
        animation-duration: 0.5s;
        animation-timing-function: linear;
        animation-iteration-count: infinite;
        animation-direction: alternate;
    }
    '';
}
