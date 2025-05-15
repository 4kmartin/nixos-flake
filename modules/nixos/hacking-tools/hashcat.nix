{  pkgs, ... }:

{
  #this module contains all of the extra packages and settings
  # needed for hashcat to work

  environment.systemPackages = with pkgs; [
    hashcat
    hashcat-utils
  ];

  
  hardware.graphics = {
    extraPackages = with pkgs; [
      intel-media-driver
      intel-ocl
      vpl-gpu-rt
      vaapiIntel
      intel-media-driver
    ];
    enable = true;
    
  };
  services.xserver.videoDrivers = [ "intel" ];
}
