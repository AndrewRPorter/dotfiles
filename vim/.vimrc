set history=500

" Set to auto read when a file is changed
set autoread

set ignorecase
set hlsearch

" Regular expression support
set magic

set number
set incsearch
set tabstop=4

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette
set t_Co=256
set t_ut="" " isable Vim's Background Color Erase (BCE), fixing background color bug

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set background=dark
colorscheme peaksea
execute pathogen#infect()
call pathogen#helptags()
