" Show line numbers
set number

" Status bar
set laststatus=2

" Indent
filetype indent on
set smartindent

" Tabstop
set tabstop=2
set shiftwidth=2
set expandtab

" Show line
set cursorline
set colorcolumn=80

" Whitespace
set wrap
set textwidth=79

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Share clipboard
set clipboard=unnamed
