execute pathogen#infect()
autocmd BufWritePre *.py :%s/\s\+$//e
syntax on
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ \ [%l/%L\ (%p%%)
filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=120 " PEP-8 Friendly
let g:syntastic_python_checkers=['pylint']
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python', 'javascript'],
                           \ 'passive_filetypes': [] }

augroup vimrc_autocmds
      autocmd BufEnter * highlight OverLength ctermbg=darkred guibg=#111111
      autocmd BufEnter * match OverLength /\%120v.*/
augroup END
