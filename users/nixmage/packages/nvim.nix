{ config, pkgs, ... }:

{
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
      set tabstop=2
      set shiftwidth=2
      set softtabstop=2
      map <C-n> :NERDTreeToggle<CR>
      let NERDTreeShowHidden = 1
    '';
  };
}
