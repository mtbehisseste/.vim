set nocompatible        " be iMproved, required
filetype on             " required
set ai
set enc=utf8
set hls                 " highlighting keyword
set mouse=a
set number              " line number
set ic                  " capital free when searching
set tabstop=4           " tab number
set shiftwidth=4
set wrap               
set noeb                " no peeb sound
set autochdir           " auto change to current directory
set scrolloff=3         " remain 3 lines when scrolling
set cursorline          " highlight current line
set ruler               " info at right bottom corner
set backspace=2
set backspace=indent,eol,start
set incsearch           " show result when key word is not complete
"set expandtab          " 使用空白取到 Tab。
"set relativenumbe      " relatice number
"set nowrap             
"set cursorcolumn       
"set showmatchi

"disable auto insert comment charactor with new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o						

"-------setting powerline---------
set rtp+=/home/ludueinstain/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

"----------------Vundle-------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

"highlight cpp syntax
Plugin 'octol/vim-cpp-enhanced-highlight'

"assembly language highlight 
Plugin 'shirk/vim-gas'

"auto save in vim
Plugin 'vim-scripts/vim-auto-save'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"---------------color scheme----------------------
"set background=dark

"let g:sierra_Pitch=1
"syntax enable
"colorscheme sierra

"set background=dark
"colorscheme material-theme

"let g:jellybeans_overrides = {
"\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
"\}
"colorscheme jellybeans

"colorscheme seti

"colorscheme luthadel

"colorscheme gruvbox
"set background=dark

"syntax on
"color dracula

colorscheme codedark
let g:airline_theme = 'codedark'

"-----------------NERDTree configure---------------
"auto open NERDTree when open vim
"autocmd vimenter * NERDTree

"toggle NERDTree using f5
map  <F5> :NERDTreeToggle<CR>"

"close vim when the last window is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"--------------------------------------------------
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev WQ wq

"mapping shortcuts
map <C-a> <esc>ggVG<CR>
map <C-w> <esc>:tabclose<CR>
inoremap <C-z>   <esc>:u<CR>
nnoremap <C-z>   <esc>:u<CR><i>
nnoremap <C-S-T> :tabprevious<CR>
nnoremap <C-T>   :tabnext<CR>
nnoremap <C-t>   :tabnew<CR>
inoremap <C-S-T> <Esc>:tabprevious<CR>
inoremap <C-T>   <Esc>:tabnext<CR>
inoremap <C-t>   <Esc>:tabnew<CR>

"set masm syntax
let filetype_asm = "asm"
let asmsyntax = "masm"

"set auto-save in vim
let g:auto_save = 1
