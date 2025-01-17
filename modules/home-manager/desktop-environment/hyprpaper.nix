{ lib, config, ... }:

{
  options.desktop.wallpaper-path = lib.mkOption {
		type=types.path; 
	};
	config = {
		services.hyprpaper = {
			enable = true;
			settings = {
				preload = config.desktop.wallpaper-path;
				wallpaper = config.desktop.wallpaper-path;
				splash = false;
			};
		};
	};
}
