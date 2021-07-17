syntax enable
set t_Co=256 "Set 256 colors
set background=dark
colorscheme gruvbox

set tabstop=2 "show existing tabs with 2 spaces width
set shiftwidth=2 "When indenting with '>', use 2 spaces width
set expandtab "tabs are spaces
scriptencoding utf-8
set encoding=utf-8
set shiftround
set nomodeline
set modelines=0
set hidden
set nonumber
set autoindent
set copyindent
set smartcase
set undolevels=1000
set showcmd "show last command
set showmatch "show matching brackets
set ruler
set title
set visualbell "Quiet bells
set noerrorbells "Quiet bells
set laststatus=2 "Moves the status line up
set shell=/bin/bash
set backspace=indent,eol,start      "Make backspace behave like every other editor"
let mapleader = ',' 		    "The default leader is \, but a comma is much better"

"----------Easier buffer navigation----------"
nmap <Leader>n :bn<cr>
nmap <Leader>p :bp<cr>
nmap <Leader>d :bd<cr>


"---------Split Management----------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

"-------------Searching-------------"
set hlsearch "highlight while searching
set incsearch "search as characters are entered

"-------------Mappings-------------"

"Make is easy to edit the vimrc file"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>f :tag<space>
nmap <Leader>q :NERDTreeToggle<cr>
nmap <Leader>t :CtrlPBufTag<cr>
nmap <Leader>r :CtrlPMRUFiles<cr>
nmap <Leader>u :r !echo " * @uuid `uuid -v4`"<cr> " Generate a uuid


"-----------Regexify--------------"
vnoremap <Leader>gr :s/\n/ /ge<cr>:s/\([\'"\[\]\{\}()\<\>=+;,]\)/ \1 /ge<cr>:s/\([\{\}+\[\]()\$\*\^\|\?/\\.-]\)/\\\1/ge<cr>:s/['"]/['"]/ge<cr>:s/\s\+/\\s*?/ge<cr>:s/\\s\*?$//e<cr>:s/^\\s\*?//e<cr><cr>
vnoremap <Leader>gw :s/\n/ /ge<cr>:s/\([\'"\[\]\{\}()\<\>=+;,]\)/ \1 /ge<cr>:s/\([\{\}+\[\]()\$\*\^\|\?/\\.-]\)/\\\1/ge<cr>:s/['"]/['"]/ge<cr>:s/\s\+/\\s*?/ge<cr>:s/\\s\*?$//e<cr>:s/^\\s\*?//e<cr>:s/\\$\w\+/\\$\\w+/ge<cr><cr>


"---------NerdTree------------"
let NERDTreeHijackNetrw = 0

"---------CtrlPOptions-------------"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"---------Auto-Commands------------"

"Automatically source the vimrc file on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"---------Vundle Config------------"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" greplace.vim
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"----------Airline Config----------"
let g:airline#extensions#tabline#enabled = 1


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
'Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'nvie/vim-flake8'
Plugin 'ycm-core/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Notes and tips
" - Press 'zz' to instantly center the line where the cursor is located
