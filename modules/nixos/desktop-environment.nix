{ config, pkgs, ... }:

{
  # programs.hyprland.enable = true;
  environment.systemPackages = with pkgs; [
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
}
