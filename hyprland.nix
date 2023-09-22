{ config, pkgs, ... }:

{
  # Set up hyprland
  programs.hyprland = {
    enable = true;
    nvidiaPatches = true;
  };
}
