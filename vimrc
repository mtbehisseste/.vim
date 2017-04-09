set nocompatible              " be iMproved, required
filetype off                  " required

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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line






" 自動縮排：啟用自動縮排以後，在貼上剪貼簿的資料時排版可能會亂掉，這時可以手動切換至貼上模式 :set paste 再進行貼上。
set ai

" 啟用暗色背景模式。
"set background=dark

"let g:sierra_Pitch=1
"syntax enable
"colorscheme sierra

"set background=dark
"colorscheme material-theme

let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
colorscheme jellybeans

"colorscheme seti

"colorscheme luthadel

"colorscheme gruvbox
"set background=dark


" 啟用行游標提示。
"set cursorline

" 文字編碼加入 utf8。
set enc=utf8

" 標記關鍵字。
set hls

set mouse=a

" 顯示行號。
 set number

" 顯示相對行號。
"set relativenumber

" 搜尋不分大小寫。
set ic

" 使用空白取到 Tab。
"set expandtab

" 自訂縮排 (Tab) 位元數。
set tabstop=4
set shiftwidth=4

" 字數過長時換行。
set wrap
"set nowrap     " 不換行。

" 關閉嗶嗶聲。
set noeb

" 自動切換當前目錄。
set autochdir

" 捲動時保留top3行。
set scrolloff=3

" 摺疊 Folding。
"set foldenable
"set foldmethod=indent
"set foldcolumn=1
"set foldlevel=5

" 高亮當前行 (水平)。
"set cursorline

" 高亮當前列 (垂直)。
"set cursorcolumn

"settings at right down corner
set ruler

set backspace=2
set backspace=indent,eol,start

"show result when key word is nor complete
set incsearch

set guifont=DejaVu_Sans_Mono:h11

set autoindent

"set showmatch

"setting powerline 
set rtp+=/home/ludueinstain/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

"==========NERDTree configure=============

"auto open NERDTree when open vim
autocmd vimenter * NERDTree

"toggle NERDTree using f5
map  <F5> :NERDTreeToggle<CR>"

"close vim when the last window is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
