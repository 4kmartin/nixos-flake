{ pkgs, ... }:

{
  imports = [
    ../modules/home-manager/default.nix
  ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "_pennyone";
  home.homeDirectory = "/home/_pennyone";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.kitty
    pkgs.inkscape
  ];

  home.file."wallpaper" = {
    target = ".config/wallpaper.jpg";
    source = ../assets/wallpaper.jpg;
    enable = true;
  };

  # Set wallpaper
  desktop.wallpaperPath = "~/.config/wallpaper.jpg";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # inputs.stylix.enable = true;

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  stylix = {
    enable = true;
    image = ../assets/wallpaper.jpg;  
  };
}
