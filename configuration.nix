{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./luks-setup.nix
      ./localize.nix
      ./networking.nix
      ./audio.nix
      ./swaylock.nix
      ./packages.nix
      ./env.nix
      ./zsh.nix
      ./nvidia-drivers.nix
      ./hyprland.nix
      ./gnupg.nix
      ./users/nixmage.nix
      ./scripts/master.nix
    ];

    system.stateVersion = "23.05";
}
