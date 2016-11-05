set nocompatible              " required
filetype off                  " required
set hidden

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" color theme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
" 
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'kien/ctrlp.vim'
"python sytax checker
"Plugin 'nvie/vim-flake8'
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
set t_Co=256
let g:Powerline_symbols = "fancy"
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='durant'

syntax enable
" Color Schemes
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif

call togglebg#map("<F5>")

" YcmCompleter 
"nnoremap <leader>g :YcmCompleter GoToImplementationElseDeclaration<CR>
nnoremap <leader>g :YcmCompleter GoTo<CR>

" NERDTree config
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" for vim-ctrlspace
"nnoremap <silent><C-p> :CtrlSpace O<CR>
"set showtabline=0

" for scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" display line number
set nu
set encoding=utf8
"highlight ColorColumn ctermbg=233

set tabstop=4
set shiftwidth=4
set expandtab

" only for OSX
set pastetoggle=<F2>
"set clipboard=unnamed

set mouse=a
