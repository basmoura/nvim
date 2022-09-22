set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = ","
set shell=sh

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/.config/nvim/plugs.vim

colorscheme dracula

if exists('g:GtkGuiLoaded')
  call rpcnotify(1, 'Gui', 'Font', 'FiraCode Nerd Font 12')
endif

" Config editor limits
set number
set textwidth=100
set guifont=FiraCode\ Nerd\ Font:h12
set background=dark
set autoindent
set shiftwidth=2
set showmatch
set encoding=UTF-8

" Enable per-project .vimrc files
set exrc

" Line wrapping options
set nowrap

" No swapfile
set noswapfile

" Indentation Settings
set sw=2
set sts=2
set expandtab

" Loading indente and plugins depending on the filetype
filetype plugin on
filetype indent on

" Display tabs and trailing spaces
set list
set listchars=tab:\ ¬,trail:.

" Enabling mouse
set mouse=a

" Config blammer
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_template = '<author>, <committer-time> • <summary>'

" MixFormat config
let g:mix_format_on_save = 1
let g:mix_format_options = '--check-equivalent'

" Loading the other configurations
source ~/.config/nvim/keymaps.vim
source ~/.config/nvim/utils.vim

" config for nerdtree-git-plugin
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1
