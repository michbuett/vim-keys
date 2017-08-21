nmap <leader>t :PSCIDEtype<CR>
nmap <leader>a :PSCIDEaddTypeAnnotation<CR>
nmap <leader>? :PSCIDEpursuit<CR>

" move up (k) and down (j) one major block (top level declaration)
nmap <leader>j /^\w* ::\\|type \w* =<CR>:noh<CR>
nmap <leader>k ?^\w* ::\\|type \w* =<CR>:noh<CR>

" PureScript specific UTF8 symbols
" → (returns) :: [Alt]+[Shift]+[>]
" ∀ (forall)  :: [Alt]+[f]
imap ≥ →
imap ƒ ∀
