{ config, pkgs, ... }:

{
  imports = [
    ./hacking-tools/htb.nix
    ./hacking-tools/pnpt.nix
    ./hacking-tools/hashcat.nix
  ];

  nixpkgs.overlays = [ ( import ./hacking-tools/responder-overlay.nix ) (import ./hacking-tools/evil-winrm-overlay.nix)];

  environment.systemPackages = with pkgs; [
    john
    burpsuite
    python312Packages.impacket
    metasploit
    dirb
    nikto
    thc-hydra
    gobuster
    ffuf
    responder
    wordlists
    (wordlists.override { lists = with pkgs; [ rockyou seclists];})
    proxychains
    exploitdb
    openvas-scanner
    gvm-libs
    gvm-tools
    mitm6
    sshuttle
    chisel
    ligolo-ng
    # crackmapexec
    netexec
    evil-winrm
    python312Packages.lsassy
    ldapdomaindump
  ];

}
