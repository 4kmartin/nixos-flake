{ config, pkgs, ... }:
{
  
	environment.systemPackages = with pkgs; [
    grim
    wl-clipboard-rs
    satty
    slurp
		wf-recorder
  ];
}
