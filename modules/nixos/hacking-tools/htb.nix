{ config, pkgs, ... }:

{
  networking.extraHosts = ''
    10.10.11.253 perfection.htb
    10.10.11.12 iclean.htb
    10.10.11.12 capiclean.htb
    10.10.11.4 jab.htb
    10.10.11.23 permx.htb
    10.10.11.23 lms.permx.htb
  '';

  #for web based transfer and reverse shell
  networking.firewall.interfaces."tun0" = {
    allowedTCPPorts = [1337 8000]; 
    allowedUDPPorts = [1337 8000];
  };
}
