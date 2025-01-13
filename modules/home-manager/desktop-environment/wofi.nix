{config, pkgs, ... }:
let 
  font = config.desktop.text.mono-font;
  primary-color = config.desktop.primary-color;
  accent-color = config.desktop.accent-color;
  contrast-color = config.desktop.contrast-color;
  text-color = config.desktop.text.color;
  border-color = "solid black";
in
{
  programs.wofi = {
    enable = true;
    style = ''
    *{
      font-family: ${font}; 
    }
    
    window {
      background-color: ${accent-color};
    }
    
    #input {
      margin: 5px;
      border-radius: 0px;
      border: none;
      border-bottom: 3px ${border-color};
      background-color: ${primary-color};
      color: ${text-color};
    }

    #inner-box {
      background-color: ${primary-color};
    }

    #outer-box {
      margin: 5px;
      padding: 20px;
      background-color: ${primary-color};
    }

    #scroll {}

    #text {
      padding: 5px;
      color: ${text-color};
    }

    #entry:nth-child(even) {
      background-color: ${contrast-color};
    }

    #entry:selected {
      background-color: ${accent-color};
    }

    #text:selected {}
    '';
  };
}
