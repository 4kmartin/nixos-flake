{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		ntp
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
		protonvpn-cli
		protonvpn-gui
  ];

	services.resolved.enable = true;

	environment.etc.hosts.mode = "0644";
}
