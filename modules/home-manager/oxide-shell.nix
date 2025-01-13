{ lib, pkgs, config, ... } :
{
	imports = [
		./oxide-shell/helix.nix
		./oxide-shell/alacritty.nix
		./oxide-shell/nushell.nix
		./oxide-shell/starship.nix
	];

	options.shell = with lib; {
		colors = {
			primary = mkOption "#ffffff";
			accent = mkOption "#aaaaaa";
			outline = mkOption "#000000";
			background = {
				normal = mkOption "#999999";
				dark = mkOption "#dddddd";
				light = mkOption "#777777";
			};
		};
		text = {
			color = mkOption "#ffffff";
			font = {
				normal = mkOption "sans";
				mono = mkOption "JetBransMono Nerd Font Mono";
			};
		};
	};

	config = {
		fonts.fontconfig.enable = true;
	  home.packages = [
	    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "JetBrainsMono"]; })
	  ];
	};
}
