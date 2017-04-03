"VUNDLE INSTALL
"Force source .vimrc file 
set exrc
set secure

"==============================================================
" VUNDLE INSTALL START
"==============================================================
set nocompatible
filetype off

"VUNDLE INSTALL

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'altercation/vim-colors-solarized'

call vundle#end()         "required
filetype plugin indent on "required
"==============================================================
" VUNDLE INSTALL END
"==============================================================

"color scheme
set t_Co=256
set background=dark
if !has('gui-running')
	let g:solarized_termcolors=&t_Co
	let g:solarized_termtrans=1
endif
colorscheme molokai
syntax enable

"Remap keys for quick navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Code folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"C++ specific options
au BufNewFile,BufRead *.c, *.cpp, *.h
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set noexpandtab
	\ set colorcolumn=110

"Python specific options
au BufNewFile,BufRead *.py 
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"flagging whitespace in python
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

"You complete me config
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/'
let g:ycm_autoclose_preview_winow_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

highlight ColorColum ctermbg=darkgray


"Set path variable.
"let &path.="src/include, /usr/include/AL,"
set nu
"let python_highlight_all=1

" Turn powerline on
set laststatus=2

