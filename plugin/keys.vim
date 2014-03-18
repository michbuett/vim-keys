nnoremap <SPACE> <Nop>
:let mapleader = " "

" easier commands with german keyboard layout
nmap ö :

" easy config
nmap <F9> :new $HOME/.vimrc<CR>
nmap <F10> :so $HOME/.vimrc<CR>

" format entire file
map <leader>fa gg=G

" copy/paste from system register
vmap <A-y> "+y
nmap <A-p> "+p

" map keys for moving through buffers
noremap <C-tab> :bn<CR>
noremap <C-S-tab> :bp<CR>
inoremap <C-tab> <Esc>:bn<CR>
inoremap <C-S-tab> <Esc>:bp<CR>

" Bubble single lines
nmap <A-k> :m-2<CR>==
nmap <A-Up> :m-2<CR>==
nmap <A-j> :m+<CR>==
nmap <A-Down> :m+<CR>==

" Bubble multiple lines
vmap <A-k> :m-2<CR>gv=gv
vmap <A-Up> :m-2<CR>gv=gv
vmap <A-j> :m'>+<CR>gv=gv
vmap <A-Down> :m'>+<CR>gv=gv

" Indent lines using <Left> and <Right>
vmap <A-Right> >gv
nmap <A-Right> >>
imap <A-Right> <Esc>>>i
vmap <A-Left> <gv
nmap <A-Left> <<
imap <A-Left> <Esc><<i

" Avoid nasty things when using <shift> + arrow keys
noremap <S-Up> <Up>
noremap <S-Down> <Down>
noremap <S-Left> <Left>
noremap <S-Right> <Right>

" Remap window commands
map <leader>ws <Esc>:wincmd s<CR>
map <leader>wv <Esc>:wincmd v<CR>
map <leader>wc <Esc>:wincmd c<CR>
map <leader>wn <Esc>:wincmd n<CR>
map <leader>wo <Esc>:wincmd o<CR>
map <leader>w+ <Esc>:wincmd _<CR>
map <leader>w- <Esc>:wincmd <Bar><CR>
map <leader>w= <Esc>:wincmd =<CR>
nmap + :vertical resize +20<CR>
nmap - :vertical resize -20<CR>
map <C-S--> <Esc>:wincmd ><CR>
map <C-Down> <Esc>:wincmd j<CR>
map <C-j> <Esc>:wincmd j<CR>
map <C-Up> <Esc>:wincmd k<CR>
map <C-k> <Esc>:wincmd k<CR>
map <C-Left> <Esc>:wincmd h<CR>
map <C-h> <Esc>:wincmd h<CR>
map <C-Right> <Esc>:wincmd l<CR>
map <C-l> <Esc>:wincmd l<CR>

" tags
nmap <F3> :exec("tjump ".expand("<cword>"))<CR>
nmap <F4> :split<CR>:exec("tjump ".expand("<cword>"))<CR>

" trigger NERDTree, Tagbar $ Co.
nmap <leader>n <Esc>:NERDTreeToggle<CR>
nmap <leader>t <Esc>:TagbarToggle<CR>
nmap <leader>f "zyaw :exe ":Ack ".@z.""<CR>
nmap <C-f> :CtrlP<CR>
nmap <C-t> :CtrlPTag<CR>
nmap <C-b> :CtrlPBuffer<CR>

nmap oi aI
vmap oi aI
