{ config, pkgs, ... }:

{
  # Enable support for a USB-C Dock's Display output
  services.xserver.videoDrivers = [
    "displaylink"
    "modesetting"
  ];
}
