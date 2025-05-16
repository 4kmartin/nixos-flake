{config, ... }:
let 
  font = config.text.mono-font;
  text-color = config.text.color;
  background = config.color.contrast-color;
  border-color = config.color.accent-color;
in
{
  programs.wofi = {
    enable = true;
    style = ''
    * {
        font-family: ${font};
        color: ${text-color};
        background: transparent;
      }

      #window {
        background: ${background};
        margin: auto;
        padding: 10px;
        border-radius: 20px;
        border: 5px solid ${border-color};
      }

      #input {
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 15px;
      }

      #outer-box {
        padding: 20px;
      }

      #img {
        margin-right: 6px;
      }

      #entry {
        padding: 10px;
        border-radius: 15px;
      }

      #entry:selected {
        background-color: ${background};
      }

      #text {
        margin: 2px;
      }
    '';

    settings = {
      hide_scroll = true;
      show = "drun";
      width = "30%";
      lines = "8";
      line_wrap = "word";
      term = "kitty";
      allow_markup = true;
      always_parse_args = false;
      show_all = true;
      print_command = true;
      layer = "overlay";
      allow_images = true;
      sort_order = "alphabetical";
      gtk_dark = true;
      prompt = "";
      image_size = "20";
      display_generic = false;
      location = "center";
      key_expand = "Tab";
      insensitive = false;
    };
  };
}
