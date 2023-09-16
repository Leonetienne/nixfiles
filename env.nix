{ config, pkgs, ... }:

{
  environment.sessionVariables = rec {
    WLR_NO_HARDWARE_CURSORS = "1";
    GTK_THEME = "dracula";
  };
}
