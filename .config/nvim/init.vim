"load external files
source ~/.vimrc
source ~/.config/nvim/keymaps.vim

" Space setting
set list
set shiftround
set autoindent
set shiftwidth=2
set smartindent
set smarttab
set tabstop=2

"colorscheme gruvbox


"Plugins Start
call plug#begin('~/.vim/plugged')
  Plug 'matze/vim-move'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()
