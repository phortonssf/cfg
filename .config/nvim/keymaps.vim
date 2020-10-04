
" <ALT + J> or <ALT + K>  move line down or up
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" set jj and kk leave insert mode
imap jj <Esc>
imap kk <Esc>


"Map Leader to space bar
nnoremap <SPACE> <Nop>

"let mapleader = " "

" Set Leader 
let mapleader="\<Space>"

"Leader + o to add space normal mode
nnoremap <leader>o o<esc>
"ss space in normal mode
nnoremap <leader><space> i<space><esc>


" copy and past from vim/nvim to windows  text to .vimbuffer
 vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
 " paste from buffer
 map <C-v> :r ~/.vimbuffer<CR>
