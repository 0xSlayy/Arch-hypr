" Neovim Configuration File (init.vim)

" Set leader key
let mapleader = " "

" Basic settings
set number
set relativenumber
set expandtab
set shiftwidth=4
set tabstop=4
set termguicolors
set cursorline
set nowrap
set scrolloff=8
set sidescrolloff=8
set wildmenu
set wildmode=list:longest
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
set matchtime=2
set autoindent
set smartindent
filetype indent on
set foldmethod=syntax
set foldlevel=99
set updatetime=300

" Colorscheme
syntax enable
set background=dark
highlight Normal guibg=#1a1a1a guifg=#d0d0d0
highlight LineNr guifg=#ff0099
highlight CursorLineNr guifg=#00ffff
highlight StatusLine guibg=#002b36 guifg=#fdf6e3
highlight StatusLineNC guibg=#073642 guifg=#93a1a1
highlight Search guibg=#ff0066 guifg=#ffffff
highlight MatchParen guibg=#00ffff guifg=#000000
highlight Visual guibg=#5f5f5f

" Status Line (Cyberpunk IDE-like)
set statusline=%f\ %h%w\ %r\ %m\ %y\ %p%%\ %l,%c\ %a
set laststatus=2

" Key mappings
nnoremap <leader>e :e<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Telescope<CR>
nnoremap <leader>c :cnext<CR>
nnoremap <leader>C :cprevious<CR>
nnoremap <leader>n :enew<CR>
nnoremap <leader>v :VexVertical<CR>

" Customizing :Vex (netrw) behavior
let g:netrw_liststyle = 3 " Tree view
let g:netrw_browse_split = 4 " Open files in a new tab
let g:netrw_altv = 1 " Open directories in vertical split

" IDE-like Enhancements
" Highlighting
highlight CursorLine guibg=#2e2e2e
highlight Visual guibg=#444444

" Better Navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Quickfix list enhancements
set errorformat=%f:%l:%c\ %m
set formatoptions+=tc

" Code folding
set foldenable
set foldmethod=syntax

" Tabs and indentation
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Better default file browser
command! Vex :Explore
command! VexVertical :Vex
command! VS :vsp | :Explore
command! HS :sp | :Explore

" Auto-completion settings
set completeopt=menuone,noselect

" Enable file and directory auto-completion
set wildmenu
set wildmode=list:longest

" Command line enhancements
set cmdheight=2

" Enable syntax highlighting
syntax enable

" File search commands
command! Rg :call fzf#run(fzf#wrap(fzf#run({'source': 'rg --files', 'sink': 'e'})))

" Improved command history
set history=1000
set viminfo='1000,<50,s10

" Set up a custom message on startup
autocmd VimEnter * echo "Welcome to the Cyberpunk Neovim! 🚀"

" Basic clipboard integration (if Neovim is compiled with clipboard support)
set clipboard=unnamedplus
