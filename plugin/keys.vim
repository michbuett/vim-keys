nnoremap <SPACE> <Nop>
let mapleader = " "

" easy config
nmap <S-F9> :e $HOME/.vimrc<CR>
nmap <S-F10> :so $HOME/.vimrc<CR>

" Force saving files that require root permission
command! SUDOwrite :execute 'w !sudo tee > /dev/null %' | edit!

" Bubble single lines
nmap <silent> <A-k> :m-2<CR>==
nmap <silent> <A-Up> :m-2<CR>==
nmap <silent> ∆ :m-2<CR>==
nmap <silent> <A-j> :m+<CR>==
nmap <silent> <A-Down> :m+<CR>==
nmap <silent> º :m+<CR>==

" Bubble multiple lines
vmap <silent> <A-k> :m-2<CR>gv=gv
vmap <silent> <A-Up> :m-2<CR>gv=gv
vmap <silent> ∆ :m-2<CR>gv=gv
vmap <silent> <A-j> :m'>+<CR>gv=gv
vmap <silent> <A-Down> :m'>+<CR>gv=gv
vmap <silent> º :m'>+<CR>gv=gv

" Indent lines using <Left> and <Right>
vmap <A-Right> >gv
nmap <A-Right> >>
imap <A-Right> <Esc>>>i
vmap <A-Left> <gv
nmap <A-Left> <<
imap <A-Left> <Esc><<i

" moving through location list items
noremap <S-Up> :lprevious<CR>
noremap <S-Down> :lnext<CR>

" moving through buffers
noremap <S-Left> :bn<CR>
noremap <S-Right> :bp<CR>

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
nmap <S-F3> :exec("tjump ".expand("<cword>"))<CR>
nmap <S-F4> :split<CR>:exec("tjump ".expand("<cword>"))<CR>

" trigger NERDTree, Tagbar $ Co.
nmap <leader>n <Esc>:NERDTreeToggle<CR>
" nmap <leader>t <Esc>:TagbarToggle<CR>
" nmap <leader>f "zyaw :exe ":Ack ".@z.""<CR>
nmap <C-f> :CtrlP<CR>
nmap <C-t> :CtrlPTag<CR>
nmap <C-b> :CtrlPBuffer<CR>

" grep word under cursor
nnoremap <silent><leader>f :lgr! "\b<C-R><C-W>\b"<CR>:cw<CR>

" paste from system clipboard
inoremap <silent> <S-Insert> <ESC>:set paste<CR>"+p :set nopaste<CR>

" toggle spellcheck
nmap <silent> <S-F7> :setlocal spell! spelllang=en_us<CR>
