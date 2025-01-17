{ lib, config, ... }:

{
	services.hyprpaper = {
		enable = true;
		settings = {
			preload = config.desktop.wallpaper-path;
			wallpaper = config.desktop.wallpaper-path;
			splash = false;
		};
	};
}
