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

    programs.git = {
      enable = true;
      userName = "Leon Etienne";
      userEmail = "me@leonetienne.de";
      extraConfig = {
        core.editor = "nvim";
      };
    };

    programs.neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      plugins = with pkgs.vimPlugins; [
        nerdtree
      ];
      extraConfig = ''
        syntax enable
        set number
        set expandtab
        set tabstop=4
        set shiftwidth=4
        set softtabstop=4
        map <C-n> :NERDTreeToggle<CR>
        let NERDTreeShowHidden = 1
      '';
    };
  };
}
