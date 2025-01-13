{config, pkgs, lib, ... } :

{
  programs.alacritty = {
    enable = true;
    settings = {
      shell = {
        program = "nu";
        args = ["-l"];
      };
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font Mono";
        };
      };
      window = {
        dynamic_title = false;
        title = "Terminal";
        blur = true;
        opacity = 0.8;
      };
    };
  };
}
