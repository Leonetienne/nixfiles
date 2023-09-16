{ config, pkgs, ... }:

{
  imports =
  [ 
    ./git.nix
    ./nvim.nix
  ];

   nixpkgs.config.allowUnfree = true;
   home.packages = with pkgs; [
     jetbrains.phpstorm
   ];
}
