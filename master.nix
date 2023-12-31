{ config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz";
in
{
  imports =
    [ 
      ./hardware-configuration.nix
      ./luks-setup.nix
      (import "${home-manager}/nixos")
      ./localize.nix
      ./networking.nix
      ./audio.nix
      ./fonts.nix
      ./bluetooth.nix
      ./swaylock.nix
      ./packages.nix
      ./env.nix
      ./zsh.nix
      ./python.nix
      ./nvidia-drivers.nix
      ./hyprland.nix
      ./gnupg.nix
      ./docker.nix
      ./ddev.nix
      ./users/nixmage/master.nix
      ./users/agent/master.nix
      ./scripts/master.nix
    ];

    system.stateVersion = "23.05";
}
