{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    usbutils
    wlr-randr
  ];
}
