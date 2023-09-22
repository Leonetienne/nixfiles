{ config, pkgs, ... }:

{
 programs.git = {
    enable = true;
    userName = "Leon Etienne";
    userEmail = "me@leonetienne.de";
    extraConfig = {
      core.editor = "nvim";
      init.defaultBranch = "master";
    };
  };
}
