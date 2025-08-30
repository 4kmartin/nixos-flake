{config, pkgs, ... } :

{
  environment.systemPackages = with pkgs; [
    helix
    alacritty
    starship
    nushell
    zellij
    bat
    ripgrep
    fzf
    zoxide
  ];
}
