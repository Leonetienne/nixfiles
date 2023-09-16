{ config, pkgs, ... }:

{
  # Set up zshell with omz
  programs.zsh = {
    enable = true;
    shellAliases = {
    	ll = "ls -l";
    	vi = "nvim";
	nix-update = "sudo nixos-rebuild switch";
	gda = "git add --all";
	gst = "git status";
	gcm = "git commit -m";
	gush = "git push";
	gull = "git pull";
	glone = "git clone";
	giff = "git diff";
	gog = "git log";
    };

    histSize = 1000000;
    histFile = "$HOME/.zshhistory";
    ohMyZsh = {
    	enable = true;
	plugins = [
	  "git"
	];
	theme = "robbyrussell";
    };
  };
}
