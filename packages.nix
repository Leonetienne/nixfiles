{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Install mtr networking tools, as it may be required by some programs
  programs.mtr.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    dracula-theme
    glib
    gsettings-desktop-schemas
    curl
    vim
    git
    firefox
    kitty
    nvtop
    tmux wofi
    swaybg
    swaylock-effects
    wl-clipboard
    mako
    imv
    mpv
    lsix
    pavucontrol
    neofetch
    grim
    slurp
    dig
    xdg-utils
  ];
}
