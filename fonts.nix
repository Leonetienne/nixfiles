{ config, pkgs, ... }:

{
    # Configure fonts
    fonts.fonts = with pkgs; [
      nerdfonts # Icon fonts
    ];
}
