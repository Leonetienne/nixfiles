{ config, pkgs, ... }:

{
  # Configure swaylock
  security.pam.services.swaylock.fprintAuth = false;
  security.pam.services.swaylock = {
    text = ''
      auth include login
    '';
  };
}
