" ==========================================================
" Inicial Setup
" ==========================================================

set nocompatible              " be iMproved, required
filetype off                  " required

" ==========================================================
" Pluglins List and Configuration
" ==========================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Molokai Theme
Plugin 'tomasr/molokai'

" git wrapper
Plugin 'tpope/vim-fugitive'

" vim commentary
Plugin 'tpope/vim-commentary'

" validation scripts
Plugin 'scrooloose/syntastic'

" A solid language pack for Vim.
Plugin 'sheerun/vim-polyglot'

" status and tabline
Plugin 'vim-airline/vim-airline'

" official theme repository for vim-airline
Plugin 'vim-airline/vim-airline-themes'

" Highlights trailing whitespace in red and provides :FixWhitespace to fix it.
Plugin 'bronson/vim-trailing-whitespace'

" A tree explorer plugin for vim.
Plugin 'scrooloose/nerdtree'

" Javascript language syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'

call vundle#end()

" enable syntax files load
syntax on

" enable plugins file detection and indenting
filetype plugin indent on

" ==========================================================
" Colors
" ==========================================================

" My color scheme
colorscheme molokai
let g:airline_theme='molokai'

" ==========================================================
" Spaces and Tabs
" ==========================================================

" Set tabs
set tabstop=2 shiftwidth=2 softtabstop=2

" tabs are spaces
set expandtab

" ==========================================================
" File Types Indenting Config
" ==========================================================

" turns autoindent on
set autoindent

" does the right thing (mostly) in programs
set smartindent

" stricter rules for C programs
set cindent

" ==========================================================
" UI Config
" ==========================================================

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to.
set lazyredraw

" highlight matching [{()}]
set showmatch

" show line numbers
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Add a bit extra margin to the left
set foldcolumn=1

" ==========================================================
" Searching
" ==========================================================

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" Space remove highlight serch
nnoremap <space> :nohlsearch<CR>  " ,<space> close highlight

" ==========================================================
" Backspace Behavior
" ==========================================================

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" ==========================================================
" Folds Config
" ==========================================================

" enable folding
set foldenable

" open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" fold based on indent level
set foldmethod=indent

" ==========================================================
" Errors Config
" ==========================================================

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ==========================================================
" Backup Config
" ==========================================================

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" ==========================================================
" Syntastic Config
" ==========================================================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=2

" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" Languages Linters
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = "--config ~/Documents/linters/.eslintrc.js"

" ==========================================================
" Maps
" ==========================================================

" Ctrl-n toogle NERDtree
map <C-n> :NERDTreeToggle<CR>
