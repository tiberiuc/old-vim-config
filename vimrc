set t_Co=256
source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
"let &rtp = pathogen#join(&rtp, pathogen#glob_directories(.vim/bundle/*))

call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

let mapleader = ","

set nocompatible
set shiftwidth=4
set tabstop=4
set expandtab
set nonumber
"set rnu
syntax on
set autoindent
set smartindent
set wrap "Wrap lines
set mouse=a
set clipboard+=unnamed

autocmd BufNewFile,BufRead *.coffee set filetype=coffee
"let coffee_compile_on_save = 1
let haml_convert_on_save = 1
let coffee_no_reserved_words_error = 1

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

" Swap ; and :  Convenient.
nnoremap ; :
"nnoremap : ;

"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Toggle number line mode
function! ToggleNuMode()
    if(&rnu == 1)
        set nu
    else
        set rnu
    endif
endfunc

nnoremap <leader>b :call ToggleNuMode()<cr>
nnoremap <leader>g :TagbarToggle<cr>
nnoremap <leader>z :set nonumber<cr>

" Autoload vimrc
autocmd BufWritePost .vimrc source %

" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmode=longest:full
set wildmenu

set cmdheight=1 "The commandbar height

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

" sa scap de highlight
nmap <leader>m :noh<return>

" No sound on errors
set noerrorbells
set visualbell
set t_vb=
set tm=500

" line break
set lbr
" text wrap
set tw=500

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

"deschide nerdtree mai repede
nnoremap nd :NERDTree

"salvez cu ,w
nmap <leader>w :w<cr>


"got to line cu enter in loc de G
"nmap <CR> G

"syntax match Tab /\t/
"hi Tab gui=underline guifg=blue ctermbg=blue

set background=dark
let moria_style = 'dark'
if !has('gui_running')
    "colo moria256
    color solarized
else
    color solarized
    "colo moria

    ""colo peaksea
endif
set guifont=Menlo:h13
let g:Powerline_symbols = 'fancy'
let g:solarized_termcolors=256


nmap <leader>v <C-v>
vmap t :Tab/

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
            nmap <silent> <leader>o :wincmd o<CR>
            nmap <silent> <leader>c :wincmd c<CR>
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
    " }

    " NerdTree {
        map <leader>n :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        "let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=0
        "autocmd BufEnter * NERDTreeMirror

        let NERDTreeDirArrows=1
        autocmd vimenter * if ( 0 == argc() ) | NERDTree | endif
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") ) | q | endif
        "map <Leader>n <plug>NERDTreeTabsToggle<CR>
        "map <D-d> <plug>NERDTreeTabsToggle<CR>
    " }

    " Fuzzy Finder {
        """ Fuzzy Find file, tree, buffer, line
        nmap <leader>ff :FufFile **/<CR>
        nmap <leader>ft :FufFile<CR>
        nmap <leader>fb :FufBuffer<CR>
        nmap <leader>fl :FufLine<CR>
        nmap <leader>fr :FufRenewCache<CR>
    " }

set enc=utf-8
set fillchars=vert:\│
set list listchars=tab:»·,trail:·
set virtualedit=all

"autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

cd! ~/work/sitedity
