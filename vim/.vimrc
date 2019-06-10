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

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

colorscheme slate
execute pathogen#infect()
call pathogen#helptags()
