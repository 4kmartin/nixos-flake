{ lib, config, ... }:

{
  options.snowcrash.wallpaper-path = lib.mkOption {};
	config = {
		services.hyprpaper = {
			enable = true;
			settings = {
				preload = config.wallpaper-path;
				wallpaper = config.wallpaper-path;
				splash = false;
			};
		};
	};
}
