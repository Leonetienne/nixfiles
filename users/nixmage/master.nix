{ config, pkgs, ... }:

{
  # Define a user account. 
  users.users.nixmage = {
    isNormalUser = true;
    description = "nixmage";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
    ];
  };

  home-manager.users.nixmage = { pkgs, ... }: {
    imports =
    [ 
      ./packages/master.nix
    ];

    home.stateVersion = "23.05";
    home.file = {
      ".config/hypr/hyprland.conf".source = dotfiles/hyprland.conf;
      ".config/kitty/kitty.conf".source = dotfiles/kitty.conf;
      ".config/swaylock/config".source = dotfiles/swaylock.conf;
      "Wallpapers/space-0.jpg".source = other-files/wallpaper.jpg;
    };
  };
}
