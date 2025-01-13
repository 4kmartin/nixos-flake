{ config, pkgs, ... }:

{
  #this module contains all of the extra packages and settings
  # needed for hashcat to work

  environment.systemPackages = with pkgs; [
    hashcat
  ];

  
  hardware.graphics.extraPackages = with pkgs; [
    intel-media-driver
    intel-ocl
  ];
  # services.xserver.videoDrivers = [ "intel" ];
}
