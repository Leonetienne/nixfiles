{ config, pkgs, ... }:

{
  environment.sessionVariables = rec {
    WLR_NO_HARDWARE_CURSORS = "1"; # Otherwhise hyprland can't render a mouse cursor on nvidia hardware
  };
}
