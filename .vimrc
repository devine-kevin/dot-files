" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" =============== Pathogen Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" Use tpope's pathogen plugin to manage all other plugins

  runtime autoload/pathogen.vim
  call pathogen#infect()
  call pathogen#helptags()

" ================ General Config ====================

set linespace=0
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
let mapleader=","

set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set showmatch                   "Show matching brackets

if has ('cmdline_info')
    set ruler                       "Show ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    set showcmd
endif

if has ('statusline')
    set laststatus=2
    set statusline=%<%f\ "Filename
    set statusline+=%w%h%m%r "Options
    set statusline+=\ [%{&ff}/%Y] "Filetype
    set statusline+=\ [%{getcwd()}] "Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%% "Right aligned file name info
endif

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ============== Colorscheme ======
syntax on            "turn on syntax highlighting
let g:dracula_italic = 0
colorscheme dracula

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
set ignorecase       "Case insensitive search
set smartcase        "Case sensitive when uc present
nnoremap <leader><space> :nohlsearch<CR>

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set pastetoggle=<F12>

filetype plugin on
filetype indent on

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

nmap <leader>h :set list!<CR>
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "no folding by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Delete trailing white space ======
func! DeleteTrailingWs()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal 'z"
endfunc
autocmd BufWrite *.php :call DeleteTrailingWs()
autocmd BufWrite *.js :call DeleteTrailingWs()
autocmd BufWrite *.xml :call DeleteTrailingWs()
autocmd BufWrite *.html :call DeleteTrailingWs()

" ============== Delete Whitespace ======
noremap <leader>ws :%s/^\s\+<CR>:g/^\s*$/d<CR>:nohlsearch<CR>

" ============== Nerdtree ==========
noremap <leader>t :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.svn', '.localized']

" ============== Tagbar ============
let g:tagbar_usearrows=1
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
noremap <leader>l :TagbarToggle<CR> 
nnoremap <silent><leader><C-]> <C-w><C-]><C-w>T

" ============ Syntastic ==========
if has ('statusline')
	set statusline+=%#warningmsg#
	set statusline+={SyntasticStatuslineFlag()}
	set statusline+=%*
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_phpcs_disable = 1 

" ============ Custom =============
:ia preprint <CR>echo '<pre>';print_r();echo '</';
nnoremap <leader>nn :set nonumber<CR>
nnoremap <leader>n :set number<CR>
