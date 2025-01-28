{ config, pkgs, ... }:

{
  programs.helix = {
    settings = {
      # theme = "tokyonight";
      editor = {
        cursor-shape = {
          insert = "bar";
        };
      };
    };
    enable = true;
    # setup languages.toml
    languages = {
      language = [
        {
          name = "nix";
          language-servers = [
            "nixd"
            "nil"
          ];
        }
        {
          name = "markdown";
          soft-wrap.enable = true;
        }
      ];
      language-server.nixd = {
        command = "nixd";
      };
    };
  };
}
