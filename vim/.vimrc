" Set leader key
let mapleader = " "
let maplocalleader = " "
nnoremap <Space> <Nop>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

inoremap jk <Esc>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

vnoremap < <gv
vnoremap > >gv
vnoremap <A-j> :m .+1<CR>==
vnoremap <A-k> :m .-2<CR>==
vnoremap p "_dP

xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap <A-j> :move '>+1<CR>gv-gv
xnoremap <A-k> :move '<-2<CR>gv-gv

tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

nnoremap y "+y
vnoremap y "+y

nnoremap Y "+Y

nnoremap d "+d
vnoremap d "+d
nnoremap D "+D
nnoremap x "+x
vnoremap x "+x
nnoremap c "+c
vnoremap c "+c
