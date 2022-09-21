call plug#begin('~/.config/nvim/plugged')
    " Comment code
    Plug 'tpope/vim-commentary'
    " Syntax support
    Plug 'sheerun/vim-polyglot'
    " Autopairs
    Plug 'jiangmiao/auto-pairs'
    " File explorer
    Plug 'scrooloose/NERDTree'    
    " Icons
    Plug 'ryanoasis/vim-devicons'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Autoclose tags
    Plug 'alvan/vim-closetag'
    " Wakatime
    Plug 'wakatime/vim-wakatime'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Prettier
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

    " Themes
    Plug 'phanviet/vim-monokai-pro'
call plug#end()
