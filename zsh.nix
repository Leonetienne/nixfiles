{ config, pkgs, ... }:

{
  # Set up zshell with omz
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      nix-update = "sudo nixos-rebuild switch -I nixos-config=/etc/nixos/master.nix";
      gda = "git add --all";
      gst = "git status";
      gcm = "git commit -m";
      gush = "git push";
      gull = "git pull";
      glone = "git clone";
      giff = "git diff";
      gog = "git log";
      open = "xdg-open";
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

