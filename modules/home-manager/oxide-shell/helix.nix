{config, pkgs, ... }:

{
  programs.helix = {
    settings = {
      theme = "tokyonight";
      editor = {
        cursor-shape = {
          insert = "bar";
        };
      };
    };
    enable = true;
  };
}
