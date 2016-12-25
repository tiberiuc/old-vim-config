
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
   set runtimepath+=~/.vim/bundle/x-add-tibi/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'


" My Bundles

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'tpope/vim-haml.git'
NeoBundle 'kchmck/vim-coffee-script.git'
NeoBundle 'tpope/vim-pathogen.git'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'itspriddle/vim-jquery.git'
NeoBundle 'jistr/vim-nerdtree-tabs.git'
" " NeoBundle 'garbas/vim-snipmate.git'
" NeoBundle 'tpope/vim-surround.git'
" " NeoBundle 'vim-scripts/FuzzyFinder.git'
" " NeoBundle 'vim-scripts/L9.git'
" NeoBundle 'ervandew/supertab.git'
NeoBundle 'godlygeek/tabular.git'
" NeoBundle 'majutsushi/tagbar.git'
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'Lokaltog/vim-easymotion.git'
NeoBundle 'wikitopian/hardmode.git'
NeoBundle 'airblade/vim-gitgutter.git'
NeoBundle 'nathanaelkane/vim-indent-guides.git'
NeoBundle 'kien/ctrlp.vim.git'
NeoBundle 'Raimondi/delimitMate.git'
" NeoBundle 'tomtom/tcomment_vim.git'
NeoBundle 'terryma/vim-multiple-cursors.git'
NeoBundle 'xolox/vim-session.git'
NeoBundle 'xolox/vim-misc.git'
NeoBundle 'kien/ctrlp.vim.git'
" NeoBundle 'jnwhiteh/vim-golang.git'
" NeoBundle 'edkolev/tmuxline.vim'
NeoBundle 'edkolev/promptline.vim'
" NeoBundle 'bling/vim-airline.git'
NeoBundle 'vim-scripts/buftabs.git'
NeoBundle 'digitaltoad/vim-jade.git'
NeoBundle 'wavded/vim-stylus.git'
" NeoBundle 'tomtom/tlib_vim.git'
" NeoBundle 'MarcWeber/vim-addon-mw-utils.git'
" NeoBundle 'honza/vim-snippets.git'
NeoBundle 'mxw/vim-jsx.git'
NeoBundle 'pangloss/vim-javascript.git'
NeoBundle 'vim-scripts/gitignore'
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'Xuyuanp/nerdtree-git-plugin.git'

NeoBundle 'vim-scripts/ShowMarks'

NeoBundle 'gregsexton/gitv'
" NeoBundle 'SirVer/ultisnips'
" NeoBundle 'Shougo/unite.vim'

NeoBundle 'elixir-lang/vim-elixir'

NeoBundle 'jplaut/vim-arduino-ino'

NeoBundle 'elmcast/elm-vim'

NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'nsf/gocode', {'rtp': 'nvim/'}
NeoBundle 'zchee/deoplete-go', {'build': {'unix': 'make'}}
NeoBundle 'fatih/vim-go'


 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

  " If there are uninstalled bundles found on startup,
  "  " this will convenientlyrompt you to install them.
 NeoBundleCheck


set t_ut=
set t_Co=256
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

filetype plugin indent on

"let mapleader = ","
let mapleader = "\<Space>"

" Open files
nnoremap <Leader>o :CtrlP<CR>

" keep vertical split equal when tmux resize
autocmd VimResized * wincmd =

" Copy & paste to system clipboard with <Space>p and <Space>y
"vmap <Leader>y "+y
"vmap <Leader>d "+d
"nmap <Leader>p "+p
"nmap <Leader>P "+P
"vmap <Leader>p "+p
"vmap <Leader>P "+P

" Enter visual line mode with <Space><Space>:
" nmap <Leader><Leader><Leader> V


" Automatically jump to end of text you pasted:
"I can paste multiple lines multiple times with simple ppppp.
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

"Make Ctrl-Plugin a lot faster for Gitrojects
"Put following in your .vimrc (it configures CtrlP to use git or silver searcher for autocompletion):
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

set nocompatible
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number
"set rnu
syntax on
set autoindent
set smartindent
set wrap "Wrap lines
set mouse=a
set clipboard+=unnamed
set colorcolumn=100

" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmode=longest:full
set wildmenu

set cmdheight=1 "The commandbar height

set noswapfile                  " Don't use swapfile
set nobackup            " Don't create annoying backup files"

set showmatch                   " Do not show matching brackets by flickering
set incsearch                   " Shows the match while typing"
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

set switchbuf=usetab,newtab     " open new buffers always in new tabs"

set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing

" sa scap de highlight
nmap <leader>/ :noh<return>

" No sound on errors
set noerrorbells
set visualbell
set t_vb=
set tm=500

" line break
set lbr
" text wrap
set tw=500


set enc=utf-8
set fillchars=vert:\│
set list listchars=tab:»·,trail:·
set virtualedit=all

"Status line gnarliness
set laststatus=2
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
" set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)"

autocmd BufNewFile,BufRead *.coffee set filetype=coffee
"let coffee_compile_on_save = 1
let haml_convert_on_save = 1
let coffee_no_reserved_words_error = 1

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
"inoremap jj <Esc>

" Swap ; and :  Convenient.
nnoremap ; :
"nnoremap : ;


" Toggle number line mode
function! ToggleNuMode()
    if(&rnu == 1)
        set nu
        set nornu
    else
        set rnu
    endif
endfunc

nnoremap <leader>b :call ToggleNuMode()<cr>
" nnoremap <leader>g :TagbarToggle<cr>
nnoremap <leader>z :set nonumber<cr>

"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
"noremap <leader>a <Esc>:call ToggleHardMode()<CR>

" Autoload vimrc
autocmd BufWritePost .vimrc source %

" stop using arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


" Visually select the text that was last edited/pasted
nmap gV `[v`]


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
"set foldlevelstart=20
"set foldlevel=20

"au FileType javascript call JavaScriptFold()
"au FileType javascript setl fen
"au FileType javascript setl nocindent

"au FileType javascript imap <c-t> console.log();<esc>hi
"au FileType javascript imap <c-a> alert();<esc>hi

"au FileType javascript inoremap <buffer> $r return
"au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

"function! JavaScriptFold()
"    setl foldmethod=syntax
"    setl foldlevelstart=1
"    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

"    function! FoldText()
"    return substitute(getline(v:foldstart), '{.*', '{...}', '')
"    endfunction
"    setl foldtext=FoldText()
"endfunction

"Set space to toggle a fold
"nnoremap <space> za

"This keeps the current visual block selection active after changing indent with '<' or '>
vmap > >gv
vmap < <gv

"salvez cu ,w
nmap <leader>w :w<cr>

"got to line cu enter in loc de G
"nmap <CR> G

"syntax match Tab /\t/
"hi Tab gui=underline guifg=blue ctermbg=blue

let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0
"let g:solarized_termcolors=256
"let g:solarized_visibility="low"
set background=dark
if !has('gui_running')
    color solarized
else
    color solarized
endif
"set guifont=Menlo:h13


nmap <leader>v <C-v>
vmap \ :Tab/

    " Navigation {
        " Windows {
            " to be sure it is working in terminal as well
            nmap <silent> <S-k> :wincmd k<CR>
            nmap <silent> <S-j> :wincmd j<CR>
            nmap <silent> <S-h> :wincmd h<CR>

            nmap <silent> <leader>l :wincmd l<CR>
            nmap <silent> <leader>k :wincmd k<CR>
            nmap <silent> <leader>j :wincmd j<CR>
            nmap <silent> <leader>h :wincmd h<CR>
            nmap <silent> <leader>l :wincmd l<CR>
            "nmap <silent> <leader>o :wincmd o<CR>
            "nmap <silent> <leader>c :wincmd c<CR>
            " exschange windows
            nmap <silent> <leader>x :wincmd x<CR>
        " }

        " Tabs {
            " Next Tab
            nmap <silent> <leader>t gt

            " Previous Tab
            nmap <silent> <leader>r gT

            map <D-1> 1gt
            map <D-2> 2gt
            map <D-3> 3gt
            map <D-4> 4gt
            map <D-5> 5gt
            map <D-6> 6gt
            map <D-7> 7gt
            map <D-8> 8gt
            map <D-9> 9gt
            map <D-0> :tablast<CR>
        " }
    " }PQ

    " NerdTree {
        " map <leader>n :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        "map <leader>e :NERDTreeFind<CR>
        "nmap <leader>nt :NERDTreeFind<CR>

        "let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.sass-cache', '\.DS_Store']
        let NERDTreeChDirMode=0
        "let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=0
        "autocmd BufEnter * NERDTreeTabsClode

        let NERDTreeDirArrows=1
        autocmd vimenter * if ( 0 == argc() ) | NERDTree | endif
        " close vim if only nerdtree is open
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") ) | q | endif
        map <Leader>n <plug>NERDTreeTabsToggle<CR>
        let g:nerdtree_tabs_open_on_gui_startup = 0

    " }

    " Fuzzy Finder {
        """ Fuzzy Find file, tree, buffer, line
        nmap <leader>ff :FufFile **/<CR>
        nmap <leader>ft :FufFile<CR>
        nmap <leader>fb :FufBuffer<CR>
        nmap <leader>fl :FufLine<CR>
        nmap <leader>fr :FufRenewCache<CR>
    " }
    " ShowMarks {
        let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        highlight ShowMarksHLl ctermfg=white ctermbg=green guifg=red guibg=green
        highlight ShowMarksHLu ctermfg=white ctermbg=green guifg=red guibg=green
        highlight ShowMarksHLo ctermfg=white ctermbg=green guifg=red guibg=green
        highlight ShowMarksHLm ctermfg=white ctermbg=green guifg=red guibg=green
    " }

    " Fugitive {
        nmap <leader>gs :Gstatus<CR>
        nmap <leader>gp :Git push<CR>
    " }

    " Indent Guides {
        "let g:indent_guides_guide_size=1
    " }

    " Buftabs {
        let g:airline#extensions#bufferline#enabled = 1
        noremap <leader>s :bprev<CR>
        noremap <leader>d :bnext<CR>
    " }


    " CtrlP {
        map <leader>f :CtrlPBuffer<CR>
    " }




"autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e
"autocmd BufWritePre,BufRead *.coffee,*.php,*.js,*.rb,*.rake :TagbarOpen
" let g:tagbar_foldlevel = 1

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup


set t_Co=256
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

set pastetoggle=<leader>p

set wildignore+=*tmp*,*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_cmd = 'CtrlPMixed'" search anything (in files,          buffers and MRU files at the same time.)
let g:ctrlp_working_path_mode = 'ra'" search for nearest ancestor like .git, .hg, and the directory of the currentrent file
let g:ctrlp_match_window_bottom = 0" show the match window      at the top of the screen
let g:ctrlp_max_height = 10" maxiumum height of match window
let g:ctrlp_switch_buffer = 'et'" jump to a file insidef it's open already
let g:ctrlp_use_caching = 1" enable caching
let g:ctrlp_clear_cache_on_exit=0  " speed up by not removing clearing cachingache evertime
let g:ctrlp_mruf_max = 250 " number of recently opened files
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|build|tmp)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }

func! MyPrtMappings()
    let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("e")': ['<c-t>'],
            \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
            \ }
endfunc

func! MyCtrlPTag()
    let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
            \ 'AcceptSelection("t")': ['<c-t>'],
            \ }
    CtrlPBufTag
endfunc

let g:ctrlp_buffer_func = { 'exit': 'MyPrtMappings'  }
com! MyCtrlPTag call MyCtrlPTag()


let g:ctrlp_buftag_types = {
    \ 'go'        : '--language-languageforce=go --golang-types=ftv',
    \ 'coffee'    : '--language-force=coffee --coffee-types=cmfvf',
    \ 'markdown'  : '--language-force=markdown --markdown-types=hik',
    \ 'objc'      : '--language-force=objc --objc-types=mpci',
    \ 'rc'        : '--language-force=rust --rust-types=fTm'
    \ }

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1

"create line break when pressing enter
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1


let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<C-a>'
let g:multi_cursor_prev_key = '<C-u>'
let g:multi_cursor_skip_key = '<C-k>' "until we got multiple keys support
let g:multi_cursor_quit_key = '<Esc>'


" JSX {
let g:jsx_ext_required = 0
" } JSX

" Syntastic {
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"run SyntasticToggleMode
map <leader>c :SyntasticCheck<CR>
" } Syntastic


" EasyMotion {
nmap s <Plug>(easymotion-s)
" } EasyMotion


" Neovim terminal mappings
tnoremap <Esc> <C-\><C-n>


" Arduino {
let g:vim_arduino_ino_cmd = 'ano'
let g:vim_arduino_auto_open_serial = 1
" } Arduino

" Elm {
let g:elm_format_autosave = 1
" } Elm

" Go {
autocmd Filetype go setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=2 nolist
" } Go

" Deoplete {
set completeopt+=noselect
set completeopt-=preview
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
" } Deoplete
" At start you should run
" :NeoBundleRemotePlugins
" or
" :UpdateRemotePlugins
