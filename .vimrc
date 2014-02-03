set title
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nu
syntax on
set background=dark
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
set colorcolumn=80
set noswapfile
set enc=utf-8

