syntax on
set nocompatible
filetype on
set ai
set si
set enc=utf8
set hls
set mouse=a
set number 
set ic
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nowrap
set noeb
set autochdir
set scrolloff=3
set cursorline
set ruler 
set backspace=2
set backspace=indent,eol,start
set incsearch
set noexpandtab
set t_Co=256
set clipboard=unnamed
set pastetoggle=<F10> " disable auto insert comment

let g:airline_theme='powerlineish'

" -----mapping shortcuts-----
map <C"-a> <Esc>ggVG<CR>
inoremap <C-z>   <Esc>:u<CR>
nnoremap <C-z>   <Esc>:u<CR><i>
nnoremap <C-S-T> :tabprevious<CR>
nnoremap <C-T>   :tabnext<CR>
nnoremap <C-t>   :tabnew<CR>
inoremap <C-S-T> <Esc>:tabprevious<CR>
inoremap <C-T>   <Esc>:tabnext<CR>
inoremap <C-t>   <Esc>:tabnew<CR>
nnoremap <C-S-i> <Esc>gg=G<CR>
" toggle NERDTree using f5
map  <C-n> :NERDTreeToggle<CR>

" -----Vundle setup------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' 

" powerline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" code completion
Plugin 'Valloric/YouCompleteMe'

" improved search
Plugin 'haya14busa/incsearch.vim'

" git supported
" Plugin 'airblade/vim-gitgutter'

" nerdcommenter
Plugin 'scrooloose/nerdcommenter'

Plugin 'ervandew/supertab' 

" changes checker
Plugin 'chrisbra/changesPlugin'

" cpp syntax
Plugin 'octol/vim-cpp-enhanced-highlight'

" nerdtree
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" -----NERDTree config-----
let g:NERDTreeQuitOnOpen = 1 
" close vim when the last window is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" -----NERD Commenter-----
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDDefaultAlign = 'left'

" -----colorscheme-----
" let g:jellybeans_overrides = {
" \    'Background': { 'ctermbg': 'none', '256ctermbg': 'none' },
" \}
" colorscheme jellybeans
colorscheme luthadel

" -----for mis-typing-----
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev WQ wq
nmap :W :w
nmap :Q :q
nmap :Wq :wq
nmap :WQ :wq

" -----YouCompleteMe-----
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_stop_completion = ['<Left>']

" -----changes plugin(check for the changes)-----
let g:changes_autocmd = 1
let g:changes_fast = 0

" -----Cpp syntax enhance-----
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
