call plug#begin('~/.config/nvim/plugged')

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Nerdtree is life
" Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
" plugin for display git changes on nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" plugin for add ack on nerdtree
Plug 'tyok/nerdtree-ack'
" plugin for elixir
Plug 'elixir-editors/vim-elixir'
" plugin for vscode features
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" plugin for coc-elixir
" Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
" plugin for searching
Plug 'ctrlpvim/ctrlp.vim'
" plugin for Dracula
Plug 'dracula/vim', { 'as': 'dracula' }
" plugin for airline
Plug 'vim-airline/vim-airline'
" plug for blame git commits
Plug 'APZelos/blamer.nvim'
" plug for git changes
Plug 'airblade/vim-gitgutter'
" plug for syntax higlight
Plug 'scrooloose/syntastic'
" plug for mix format
Plug 'mhinz/vim-mix-format'
" plugin for theme
Plug 'joshdick/onedark.vim'
" plugin for multiple cursors
Plug 'terryma/vim-multiple-cursors'
" plugin for add icons on nerdtree
Plug 'ryanoasis/vim-devicons'
" plug for run terminal on same neovim session
Plug 'nikvdp/neomux' 

call plug#end()
