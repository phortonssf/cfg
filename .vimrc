syntax on
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
 
"Line numbers absolute
set nu
"Line numbers relative
:set relativenumber
:set rnu
set nowrap
 
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
 
 
"*********     Key Remaps   ****************
"Map Leader to space bar
nnoremap <SPACE> <Nop>
"let mapleader = " "
 
let mapleader="\<Space>"
 
"Leader + o to add space normal mode
nnoremap <leader>o o<esc>
"ss space in normal mode
nnoremap <leader><space> i<space><esc>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Remap jj to esc"
imap jj <Esc>
imap kk <Esc>
 
"set termguicolors

"set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
 
set background=dark
set scrolloff=8
set noshowmode

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


hi NormalColor guifg=Black guibg=Green ctermbg=46 ctermfg=0
hi InsertColor guifg=Black guibg=Magenta ctermbg=51 ctermfg=0
hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=0
hi VisualColor guifg=Black guibg=Orange ctermbg=202 ctermfg=0

 set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
 set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
 set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
 set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}

" first, enable status line always
 set laststatus=2
"
" " now set it up to change the status line based on mode
 if version >= 700
   au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
   au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
 endif


filetype plugin on

"Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

