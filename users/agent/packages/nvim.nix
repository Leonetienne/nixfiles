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
      set tabstop=4
      set shiftwidth=4
      set softtabstop=4
      map <C-n> :NERDTreeToggle<CR>
      let NERDTreeShowHidden = 1
    '';
  };
}
