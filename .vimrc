" Enable syntax highlighting always
syntax on

" Enable 256 Colors, required for vim-airline (the status bar)
set t_Co=256
" Required to make vim-airline (the status bar) work right of the bar
set laststatus=2
" Enable line numbers
:set number

" Enable plugin that loads everything below '~/.vim/bundle/'
execute pathogen#infect()
" Set color theme
colors evolution

" Adjust the number background color
:highlight LineNr ctermfg=white

execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv
