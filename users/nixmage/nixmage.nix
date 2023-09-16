{ config, pkgs, ... }:

{
  # Define a user account. 
  users.users.nixmage = {
    isNormalUser = true;
    description = "nixmage";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  home-manager.users.nixmage = { pkgs, ... }: {
    home.stateVersion = "23.05";
    home.file = {
      ".config/hypr/hyprland.conf".source = dotfiles/hyprland.conf;
      ".config/kitty/kitty.conf".source = dotfiles/kitty.conf;
      ".config/swaylock/config".source = dotfiles/swaylock.conf;
    };
  };
}
