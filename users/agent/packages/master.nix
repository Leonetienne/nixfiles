{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  imports =
  [ 
    ./git.nix
    ./nvim.nix
    ./firefox.nix
    ./packages.nix
  ];
}
