{ config, pkgs, ... }:

{
   home.packages = with pkgs; [
     jetbrains.phpstorm # An actually good php IDE
   ];
}