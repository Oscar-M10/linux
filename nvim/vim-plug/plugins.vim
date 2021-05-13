" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
      " Comment code
    Plug 'tpope/vim-commentary'

    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
    else
        " Syntax support
        Plug 'sheerun/vim-polyglot'
        " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Autopairs
      Plug 'jiangmiao/auto-pairs'
    " File explorer
      Plug 'scrooloose/NERDTree'    
    " Icons
      Plug 'ryanoasis/vim-devicons'
    " Intellisense
      Plug 'rafi/awesome-vim-colorschemes'
    " Better Syntax Support
      Plug 'sheerun/vim-polyglot'
    " File Explorer
      Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
      Plug 'jiangmiao/auto-pairs'
    " Use release branch (recommend)
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "keeping up to date with master
      Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
      
      " Airline
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " Indent guides
        " Plug 'Yggdroot/indentLine' 
        " Git integration
        Plug 'mhinz/vim-signify'
        " Autoclose tags
        Plug 'alvan/vim-closetag'
        " Ranger
        Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
        " Fzf
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
        " Prettier
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
     " Themes
        Plug 'joshdick/onedark.vim'
        Plug 'kaicataldo/material.vim'
        Plug 'tomasiser/vim-code-dark'
        Plug 'crusoexia/vim-monokai'
        Plug 'ayu-theme/ayu-vim'
        Plug 'dracula/vim', { 'as': 'dracula' }
    endif
call plug#end()

set background=dark
set number
