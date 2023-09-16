{ config, pkgs, ... }:

{
  # Enable the NUR (nix user repository).
  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };
  
  # Declare that we want to have ddev installed
  environment.systemPackages = with pkgs; [
    nur.repos.gbytedev.ddev
    mkcert
  ];

  # Allow Xdebug to use port 9003
  networking.firewall.allowedTCPPorts = [ 9003 ];

  # Make it possible for ddev to modify the /etc/hosts file.
  # Otherwise you'll have to manually change the
  # hosts configuration after creating a new ddev project.
  environment.etc.hosts.mode = "0644";
}
