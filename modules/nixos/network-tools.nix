{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
    nmap
		curl
		transmission_4-gtk
		wget
    openvpn
		openssl
    tcpdump
    netcat-gnu
		samba
		rdesktop # Does not seem to work in hyprland?
		freerdp
		remmina
		wireshark
  ];

	services.resolved.enable = true;
}
