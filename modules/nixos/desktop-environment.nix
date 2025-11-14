{ config, pkgs, ... }:

{
  # programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
    displaylink
    waybar
    hyprlock
    wofi
    wlogout
    dunst
    hyprpaper
    tokyonight-gtk-theme
    hypridle
    hyprpicker
    xfce.thunar
  ];

  # Enable Display Manager
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%I:%M %p | %a • %h | %F' --cmd Hyprland";
        user = "greeter";
      };
    };
  };

  # add video drivers for displaylink
  services.xserver.videoDrivers = [
    "displaylink"
    "modesetting"
  ];
  

  # setup evdi
  boot = {
    extraModulePackages = [ config.boot.kernelPackages.evdi ];
    initrd.kernelModules = [ "evdi" ];
  };
}
