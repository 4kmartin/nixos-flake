{ lib, pkgs, config, ... } :
{
	imports = [
		./terminal/helix.nix
		./terminal/alacritty.nix
		./terminal/nushell.nix
		./terminal/starship.nix
		./terminal/kitty.nix
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
	  home.packages = with pkgs.nerd-fonts; [
			fira-code
			# DroidSansMono
			jetbrains-mono
	  ];
		programs.zoxide = {
			enable = true;
			enableNushellIntegration = true;
		};
	};
}
