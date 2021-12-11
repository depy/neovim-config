set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching 
set ignorecase              " Case insensitive 
set mouse=v                 " Middle-click paste with 
set hlsearch                " Highlight search 
set incsearch               " Incremental search
set tabstop=4               " Number of columns occupied by a tab 
set softtabstop=4           " See multiple spaces as tabstops so <BS> does the right thing
set expandtab               " Converts tabs to white space
set shiftwidth=4            " Width for autoindents
set autoindent              " Indent a new line the same amount as the line just typed
set number                  " Add line numbers
set relativenumber          " Lines numbes relative to cursor
set wildmode=longest,list   " Get bash-like tab completions
set cc=80                   " Set an 80 column border for good coding style
syntax on                   " Syntax highlighting
set mouse=a                 " Enable mouse click
set clipboard=unnamedplus   " Using system clipboard
set cursorline              " Highlight current cursorline
set encoding=utf-8          " Set utf-8 encoding
set ttyfast                 " Speed up scrolling in Vim
filetype plugin indent on   " Allow auto-indenting depending on file type
filetype plugin on          " Turns on filetype matching?
let g:airline_powerline_fonts = 1   " Makes icons work?
" set spell                 " Enable spell check (may need to download language package)
" set noswapfile            " Disable creating swap file
" set backupdir=~/.cache/vim        " Directory to store backup files.



" Key mappings
let mapleader = " "

nnoremap <leader>tt :NERDTreeFocus<CR>
nnoremap <leader>tr :NERDTree<CR>
nnoremap <leader>to :NERDTreeToggle<CR>
nnoremap <leader>tf :NERDTreeFind<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



" Plugins
call plug#begin(stdpath('data') . '/plugged')
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-lualine/lualine.nvim'
 Plug 'akinsho/bufferline.nvim'
call plug#end()



" Color schemes
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula 



" Open new split panes to right and below
set splitright
set splitbelow



" Plugins basic configuration
:lua require('lualine').setup {}
:lua require('bufferline').setup {}
