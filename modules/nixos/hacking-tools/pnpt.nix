{ config, pkgs, ... }:

{
  networking.extraHosts = ''
    10.10.155.5 mail.thepastamentors.com
  '';
}
