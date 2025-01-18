{ lib, config, ... }:

{
	services.hyprpaper = {
		enable = true;
		settings = {
			preload = config.desktop.wallpaperPath;
			wallpaper = ",${config.desktop.wallpaperPath}";
			splash = false;
		};
	};
}
