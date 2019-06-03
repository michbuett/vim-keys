nnoremap <SPACE> <Nop>
let mapleader = " "

" easy config
nmap <leader><F9> :e $HOME/.vimrc<CR>
nmap <leader><F10> :so $HOME/.vimrc<CR>

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

" moving through location list items
noremap <S-Up> :lprevious<CR>
noremap <S-Down> :lnext<CR>

" moving through buffers
noremap <S-Left> :bn<CR>
noremap <S-Right> :bp<CR>

" Remap window commands
map <C-j> <Esc>:wincmd j<CR>
map <C-k> <Esc>:wincmd k<CR>
map <C-h> <Esc>:wincmd h<CR>
map <C-l> <Esc>:wincmd l<CR>

" tags
nmap <S-F3> :exec("tjump ".expand("<cword>"))<CR>
nmap <S-F4> :split<CR>:exec("tjump ".expand("<cword>"))<CR>

" trigger NERDTree, Tagbar $ Co.
nmap <leader>n <Esc>:NERDTreeToggle<CR>
nmap <C-f> :Files<CR>
nmap <C-t> :Tags<CR>
nmap <C-b> :Buffers<CR>
nmap <C-g> :Lines<CR>

" grep word under cursor
nnoremap <silent><leader>f :lgr! "\b<C-R><C-W>\b"<CR>:cw<CR>

" paste from system clipboard
inoremap <silent> <S-Insert> <ESC>:set paste<CR>"+p :set nopaste<CR>

" toggle spellcheck
nmap <silent><leader><F7> :setlocal spell! spelllang=en_us<CR>
