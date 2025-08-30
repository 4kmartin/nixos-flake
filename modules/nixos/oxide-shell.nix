{ pkgs, ... } :

{
  environment.systemPackages = with pkgs; [
    yazi
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
