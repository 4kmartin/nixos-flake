{ config, pkgs, ... } : 

{
	environment.systemPackages = with pkgs; [
    gcc
		gdb
    rustup
    cmake
    python312
		python312Packages.requests
		python312Packages.dnspython
		python312Packages.configargparse
		python312Packages.netifaces
		python312Packages.six
		python312Packages.pyasn1
		python312Packages.pip				
    git
		docker
	  nixd
    nil
  ];
}
