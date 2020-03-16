
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   " set runtimepath+=~/.vim/bundle/neobundle.vim/
   " set runtimepath+=~/.vim/bundle/x-add-tibi/
 endif

 " Specify a directory for plugins
"setup vim-plug {{{

  "Note: install vim-plug if not present
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  endif

  "Note: Skip initialization for vim-tiny or vim-small.
  if !1 | finish | endif
  if has('vim_starting')
    set nocompatible               " Be iMproved
    " Required:
    call plug#begin()
  endif

"}}}

 " Required:
"" call neobundle#begin(expand('~/.vim/bundle/'))

 " Let Plug manage Plug
 " Required:
 "PlugFetch 'Shougo/neobundle.vim'


" My Bundles

" Plug 'Shougo/neobundle.vim'
Plug 'neoclide/coc.nvim',  {'branch': 'release'}
" Plug 'tpope/vim-haml'
" Plug 'kchmck/vim-coffee-script'
" Plug 'tpope/vim-pathogen'
Plug 'scrooloose/nerdtree'
" Plug 'itspriddle/vim-jquery'
Plug 'jistr/vim-nerdtree-tabs'
" " Plug 'garbas/vim-snipmate'
Plug 'tpope/vim-surround'
" " Plug 'vim-scripts/L9'
" Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
" Plug 'majutsushi/tagbar'
" Plug 'L9'
" Plug 'FuzzyFinder'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'Lokaltog/vim-easymotion'
Plug 'wikitopian/hardmode'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'kien/ctrlp.vim'
" Plug 'jnwhiteh/vim-golang'
 Plug 'edkolev/tmuxline.vim'
" Plug 'edkolev/promptline.vim'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/buftabs'
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
" Plug 'tomtom/tlib_vim'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'honza/vim-snippets'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/gitignore'
" Plug 'tpope/vim-commentary'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-scripts/ShowMarks'

Plug 'gregsexton/gitv'
" Plug 'SirVer/ultisnips'
" Plug 'Shougo/unite.vim'

Plug 'elixir-lang/vim-elixir'

Plug 'jplaut/vim-arduino-ino'

" Plug 'elmcast/elm-vim'

Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'build': './install.sh'}
" For async completion
" Plug 'Shougo/deoplete.nvim'
" For Denite features
Plug 'Shougo/denite.nvim'


Plug 'nsf/gocode', {'rtp': 'nvim/'}
" Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
Plug 'fatih/vim-go'

" Plug 'carlitux/deoplete-ternjs', { 'build': { 'mac': 'npm install -g tern', 'unix': 'npm install -g tern' }}

" Plug 'ternjs/tern_for_vim', {'build' : {'unix': 'npm install'}}

" Plug 'slashmili/alchemist.vim'

Plug 'mhinz/vim-mix-format'
Plug 'leafgarland/typescript-vim'


 " My Bundles here:
 " Refer to |:Plug-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

" call neobundle#end()

 " Initialize plugin system
call plug#end()

 " Required:
 filetype plugin indent on

  " If there are uninstalled bundles found on startup,
  "  " this will convenientlyrompt you to install them.
" PlugCheck


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
  let g:ctrlp_user_command = ['', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0

let g:airline_section_a='%#__accent_bold#%{airline#util#wrap(airline#parts#mode(),0)}%#__restore__#%{airline#util#append(airline#parts#crypt(),0)}%{airline#util#append(airline#parts#paste(),0)}%{airline#util#append(airline#extensions#keymap#status(),0)}%{airline#util#append(airline#parts#spell(),0)}%{airline#util#append("",0)}%{airline#util#append("",0)}%{airline#util#append(airline#parts#iminsert(),0)}'
" let g:airline_section_b='%{airline#util#wrap(airline#extensions#hunks#get_hunks(),100)}%{airline#util#wrap(airline#extensions#branch#get_head(),80)}'
let g:airline_section_b=''
" let g:airline_section_c='%<%<%{airline#extensions#fugitiveline#bufname()}%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#%#__accent_airline_term#%{airline#util#wrap(airline#extensions#coc#get_status(),0)}%#__restore__#'
let g:airline_section_c='%<%<%{airline#extensions#fugitiveline#bufname()}%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
" let g:airline_section_x='%{airline#util#prepend("",0)}%{airline#util#prepend("",0)}%{airline#util#prepend("",0)}%{airline#util#wrap(airline#parts#filetype(),0)}'
let g:airline_section_x=''
" let airline_section_y='%{airline#util#wrap(airline#parts#ffenc(),0)}'
let g:airline_section_y='%{airline#util#wrap(airline#extensions#coc#get_status(),0)}'
" let g:airline_section_z=' %3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v'
let g:airline_section_z=''

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
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\', '\.hg', '\.svn', '\.bzr', '\.sass-cache', '\.DS_Store']
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

    " " Fuzzy Finder {
    "     """ Fuzzy Find file, tree, buffer, line
    "     nmap <leader>ff :FufFile **/<CR>
    "     nmap <leader>ft :FufFile<CR>
    "     nmap <leader>fb :FufBuffer<CR>
    "     nmap <leader>fl :FufLine<CR>
    "     nmap <leader>fr :FufRenewCache<CR>
    " " }
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
        noremap <leader>bp :bprev<CR>
        noremap <leader>bn :bnext<CR>
        noremap <leader>d :b#<CR>
    " }


    " CtrlP {
        map <leader>f :CtrlPBuffer<CR>
        map <leader>fp :CtrlP<CR>
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

set wildignore+=*tmp*,*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*/node_modules/*,**/node_modules/**

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

" Tern {
au FileType javascript nmap <Leader>r :TernRename<CR>
" } Tern

" Go {
autocmd Filetype go setlocal noexpandtab tabstop=2 shiftwidth=2 softtabstop=2 nolist
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>i <Plug>(go-implements)

au FileType go nmap <Leader>r <Plug>(go-rename)

" for every project be sure you are running :GoInstallBinaries
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
" :PlugRemotePlugins
" or
" :UpdateRemotePlugins
"

" MixFormat {
let g:mix_format_on_save = 1
" } MixFormat
"
" SvelteJs {
au BufRead,BufNewFile *.svelte set filetype=html
" } SvelteJs
" au BufRead,BufNewFile *.tsx set filetype=typescript
" au BufRead,BufNewFile *.tsx set filetype=javascript.jsx

" Enable local nvimrc {
set exrc
set secure
" } Enable local nvimrc

" Alchemist {
 let g:alchemist_keyword_map = '<leader>k'
" } Alchemist
"
" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-tslint',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-elixir',
  \ 'coc-svelte',
  \ 'coc-css',
  \ ]

"
" " Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "

" Wrap in try/catch to avoid errors on initial install before plugin is available
try
" === Denite setup ==="
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
\ 'split': 'floating',
\ 'start_filter': 1,
\ 'auto_resize': 1,
\ 'source_names': 'short',
\ 'prompt': 'λ ',
\ 'highlight_matched_char': 'QuickFixLine',
\ 'highlight_matched_range': 'Visual',
\ 'highlight_window_background': 'Visual',
\ 'highlight_filter_background': 'DiffAdd',
\ 'winrow': 1,
\ 'vertical_preview': 1
\ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)
catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry

" === Denite shorcuts === "
"   <leader>;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap <leader>; :Denite buffer<CR><C-o>
nmap <leader>t :DeniteProjectDir file/rec<CR><C-o>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR><C-o>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR><C-o>

" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

