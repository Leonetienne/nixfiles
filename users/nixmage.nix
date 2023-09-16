{ config, pkgs, ... }:

{
  # Define a user account. 
  users.users.nixmage = {
    isNormalUser = true;
    description = "nixmage";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    shell = pkgs.zsh;
  };
}
