{ config, pkgs, ... }:

{
 programs.git = {
    enable = true;
    userName = "Leon Etienne";
    userEmail = "etienne@medienagenten.de";
    extraConfig = {
      core.editor = "nvim";
      init.defaultBranch = "master";
    };
  };
}
