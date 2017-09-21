nmap <leader>t :Ptype<CR>
nmap <leader>a :PaddType<CR>
nmap <leader>? :Pursuit<CR>

" move up (k) and down (j) one major block (top level declaration)
nmap <leader>j /^\w* ::\\|type \w* =<CR>:noh<CR>
nmap <leader>k ?^\w* ::\\|type \w* =<CR>:noh<CR>

" PureScript specific UTF8 symbols
" → (->)     :: [Alt]+[>]
" ⇒ (=>)     :: [Alt]+[Shift]+[>]
" ∀ (forall) :: [Alt]+[f]
imap ≤ →
imap ≥ ⇒
imap ƒ ∀
