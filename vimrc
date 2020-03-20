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
set backspace=indent,eol,start
set incsearch
set expandtab
set t_Co=256
set clipboard=unnamed
" set pastetoggle=<F10> " disable auto insert comment
" set paste

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

" enable completion using <Tab>
Plugin 'ervandew/supertab' 

" changes indecator
Plugin 'chrisbra/changesPlugin'

" cpp syntax
Plugin 'octol/vim-cpp-enhanced-highlight'

" nerdtree
Plugin 'scrooloose/nerdtree'

" golang syntax
Plugin 'fatih/vim-go'

" markdown preview
Plugin 'iamcco/markdown-preview.vim'

call vundle#end()
filetype plugin indent on

" -----NERDTree config-----
let g:NERDTreeQuitOnOpen = 1 
" close vim when the last window is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" -----NERD Commenter-----
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 0
let g:NERDDefaultAlign = 'left'
let g:NERDToggleCheckAllLines = 1

" -----colorscheme-----
" let g:jellybeans_overrides = {
" \    'Background': { 'ctermbg': 'none', '256ctermbg': 'none' },
" \}
" colorscheme jellybeans
colorscheme luthadel

" -----airline theme-----
" let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline_detect_modified=1

" -----for mis-typing-----
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq
cnoreabbrev WQ wq
nmap :W :w
nmap :Q :q
nmap :Wq :wq
nmap :WQ :wq
nmap :q1 :q!

" -----YouCompleteMe-----
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_stop_completion = ['<Left>']
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" -----changes plugin(check for the changes)-----
let g:changes_autocmd = 1
let g:changes_fast = 0

" -----Cpp syntax enhance-----
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

" -----Golang syntax enhance-----
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_calls = 1

" -----mapping shortcuts-----
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-b>h <C-w>h
nnoremap <C-b>j <C-w>j
nnoremap <C-b>k <C-w>k
nnoremap <C-b>l <C-w>l

" map * to stop at current occurrence rather than the next occurrence
map * <Plug>(incsearch-nohl-*)<Plug>(incsearch-nohl-N)

