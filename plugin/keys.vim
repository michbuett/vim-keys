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
:vmap <A-y> "*y
:nmap <A-p> "*p

" map keys for tabs
:map <C-tab> :tabnext<CR>
:map <C-S-tab> :tabprevious<CR>
:imap <C-tab> <Esc>:tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>
:map <C-S-t> :tabnew<CR>
:imap <C-S-t> <Esc>:tabnew<CR>

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

" Select text using <shift> + arrow keys
map <S-Up> <Esc>v<Up>
map <S-Down> <Esc>v<Down>
map <S-Left> <Esc>v<Left>
map <S-Right> <Esc>v<Right>
" swallow <shift> in visual mode
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>

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
map <C-Down> <Esc>:wincmd j<CR>:wincmd _<CR>
map <C-j> <Esc>:wincmd j<CR>:wincmd _<CR>
map <C-Up> <Esc>:wincmd k<CR>:wincmd _<CR>
map <C-k> <Esc>:wincmd k<CR>:wincmd _<CR>
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
