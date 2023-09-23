{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Install mtr networking tools, as it may be required by some programs
  programs.mtr.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    curl
    vim
    git
    firefox
    kitty            # Terminal emulator
    nvtop            # Nvidia top
    tmux
    wofi             # Application launcher
    swaybg           # Wallpaper
    swaylock-effects # Screen locker
    waybar           # Status bar
    wl-clipboard     # Clipboard cli
    mako             # Notification daemon
    imv              # The best image viewer
    mpv              # The best media player
    pavucontrol      # Gui to modify sound vol. per app
    pamixer          # Cli to modify global volume
    neofetch         # Must have, for additional swag
    grim             # Screenshot util
    slurp            # Screen area selector (mainly for grim)
    dig
    xdg-utils        # xdg-open and co.
    htop
    tldr             # Usage examples for cli tools
    gnumake
    cmake
    gcc
    zathura          # An actually good pdf viewer
    gnome.nautilus   # A file explorer, to sieve through images and videos
    ffmpeg
    wf-recorder      # A simple screen recorder util
    cowsay
    rsync
    file	           # Analyze a files type
    figlet           # Big letters as ascii art
  ];
}
