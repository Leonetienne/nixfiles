{ config, pkgs, ... }:

{
   home.packages = with pkgs; [
     jetbrains.phpstorm # An actually good php IDE
     obs-studio
     cavalier           # A music visualizer
   ];
}
