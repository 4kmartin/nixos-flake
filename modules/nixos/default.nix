{ pkgs, ... }:

{
	imports = [
		./desktop-environment.nix
		./network-tools.nix
		./oxide-shell.nix
		./hacking-tools.nix
		./devops-tools.nix
		# ./peripheral.nix
		./screencapture.nix
		./writing.nix
	];

	environment.systemPackages = with pkgs; [
		zip
		unzip
		pulseaudio
		mpv
		htop
		neofetch
		spotify
	];

	virtualisation = {
	  containers.enable = true;
		libvirtd.enable = true;
	};

	programs.steam.enable = true;
	programs.virt-manager.enable = true;

}
