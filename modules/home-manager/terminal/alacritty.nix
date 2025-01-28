{config, pkgs, lib, ... } :

{
  programs.alacritty = {
    enable = true;
    settings = {
      terminal.shell = {
        program = "nu";
        args = ["-l"];
      };
      # font = {
      #   normal = {
      #     family = config.text.mono-font;
      #   };
      # };
      window = {
        dynamic_title = false;
        title = "Terminal";
        blur = true;
        # opacity = 0.8;
      };
    };
  };
}
