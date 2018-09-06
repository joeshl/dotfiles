"----Vundle Package Mangager Setup----------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

"https://github.com/vim/vim/issues/3117#issuecomment-402622616
if has('python3')
  silent! python3 1
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-line'
Plugin 'godlygeek/tabular'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
"Plugin 'VOoM'
"Plugin 'godlygeek/tabular'
Plugin 'SirVer/ultisnips'
"vim-fugitive
"vim-javascript-syntax
"vim-less
"vim-snippets
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


:autocmd InsertEnter,InsertLeave * set cul!


"----Visuals--------------------------------------------------------------------
" Load the Molokai Color Theme
let g:molokai_original = 0
colorscheme molokai

" Add a colored column at line 80
set colorcolumn=80


"set guifont=Fira\ Mono\ for\ Powerline:h16
silent! set macligatures
set guifont=Fira\ Code:h16
"set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
"set go-=L " Removes left hand scroll bar
set linespace=14


"--------------Search-----------------------------------------------------------
" Highlight searches
set hlsearch
" Highlight dynamically as pattern is typed
set incsearch





"--------------Mappings---------------------------------------------------------

"Change the leader to a ,
let mapleader=","
"Make it easy to edit our .vimrc file
nmap <leader>ev :tabedit ~/.vimrc<cr>
nmap <leader>es :tabedit ~/.vim/snippets<cr>
nmap <leader>dt :%s/<[^>]*>//<cr>

"Add simple highlight removal
nmap <leader><space> :nohlsearch<cr>

" Down is really the next line and k is up. Useful for lines that wrap
" nnoremap j gj
" nnoremap k gk
nnoremap j j
nnoremap k k

"Easy escaping to normal model
imap jj <esc>

" Make NERDTree easier to open
nmap <leader>1 :NERDTreeToggle<cr>

" Ctrl P search for tags
nmap <c-R> :CtrlPBufTag<cr>

" Find in ctags
nmap <leader>f :tag<space>


"--------------Plug-in config---------------------------------------------------

"/
"/ Control P
"/

" Ignore some files and directories
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|node_modules|vendor$'
"let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"/
"/ G Replace
"/
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

"/
"/ PHP Namespace
"/
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"/
"/ PDV
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"/
"/ UltiSnips
"/
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

"/
"/ AirLine
"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#bufferline#enabled = 0
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"--------------Auto-commands----------------------------------------------------
augroup autosourcing
    "Clear the auto commands
    autocmd!

    " Enable file type detection
    filetype on
    "Automatically Source the .vimrc file when I save it
    autocmd BufWritePost .vimrc source %

    "Set the files type of .md to markdown
    autocmd BufRead,BufNewFile *.md set filetype=markdown

    " Treat .json files as .js
    "autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

    " Auto-remove trailing spaces
    " autocmd BufWritePre *.php :%s/\s\+$//e
    " autocmd BufWritePre *.js :%s/\s\+$//e
augroup END





"-----Setup Tabs, Completions and Indentation-----------------------------------
set shiftwidth=4
set autoindent
set smartindent
set breakindent
set expandtab

"Set our desired autocompletion matching.
set complete=.,w,b,u
set wrap



"-----Buffer -------------------------------------------------------------------
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

"-------------------------------------------------------------------------------
"-------------------------------------------------------------------------------






" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif



nmap ,t :!clear && phpunit % --stop-on-error --stop-on-failure<cr>
nmap ,c :!clear && phpcs --standard=code_rules.xml  %<cr>
nmap ,g :!clear && gulp<cr>
nmap ,s :!clear && sublime %<cr>
nmap ,p :!clear && php %<cr>
nmap ,o :!clear && open %<cr>

" End Johnathan's File
"-------------------------------------------------------------------------------


"vnoremap // y/<C-R>"<CR>

"let g:voom_tree_width = 35

":so ~/.vim/autoload/less.vim



" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don’t add empty newlines at the end of files
"JCE set binary
"JCE set noeol

" Respect modeline in files
set modeline
set modelines=2
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
"set number
" Enable syntax highlighting
syntax on
" Highlight current line
" JCE Don't hightlight for faster scrolling
set nocursorline
" Make tabs as wide as four spaces
set tabstop=4
" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set lcs=tab:▸\ ,trail:·,nbsp:_
set list
" Ignore case of searches
set ignorecase
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
"set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
"if exists("&relativenumber")
"    set relativenumber
"    au BufReadPost * set relativenumber
"endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Notes and Tips
" - Press zz to center the line where the cursor is located
" - :ts to see all matches for the last tag
" - ctrl+] to jump to occurance of item under the cursor
" - ctrl+^ to jump to the previous buffer
