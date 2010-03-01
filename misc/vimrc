function! UPDATE_TAGS()
    let _f_ = expand("%:p")
    let _cmd_ = '"ctags -a -f /dvr/tags --c++-kinds=+p --fields=+iaSlS  --extra=+q " ' . '"' . _f_ .  '"'
    "let _cmd_ = '"ctags -a -f /dvr/tags --c++-kinds=+p --fields=+iaS  --extra=+q " ' . '"' . _f_ .  '"'
    let _resp = system(_cmd_)
    unlet _cmd_
    unlet _f_
    unlet _resp
endfunction

autocmd BufWrite  *.cpp,*.h,*.c call UPDATE_TAGS() 

autocmd BufRead ~/.[az] set tabstop=10

let g:winManagerWindowLayout='FileExplorer|TagList'
let g:miniBufExplMapCTabSwitchBufs = 1
nmap wm :WMToggle<cr>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
set cscopequickfix=s-,c-,d-,i-,t-,e-
set completeopt=longest,menu

 
"0
imap jj <esc>
map <right> :bn<cr>
map <left> :bp<cr>
set cino=:0l1s

"if has("cscope")
"    set csprg=/usr/bin/cscope
"    set csto=0
"    set cst
"    set nocsverb
"    " add any database in current directory
"    if filereadable("cscope.out")
"        cs add cscope.out
"        " else add database pointed to by environment
"    elseif $CSCOPE_DB != ""
"        cs add $CSCOPE_DB
"    endif
"    set csverb
"endif

"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM har to remember
set history=400

"Enable filetype plugin
filetype on
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Have the mouse enabled all the time:
set mouse=a

"Font
set guifont=Courier\ New\ 12

"Enable syntax hl
syntax enable

"Highlight current
set cursorline

"Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number
set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=4

"Highlight search things
set hlsearch

"Remap VI 0
map 0 ^

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"Turn backup on
"set backup

"Enable folding, I find it very useful
set fen
set fdl=0

"Text options
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set lbr

"Auto indent
set ai

"Smart indet
set si

"C-style indenting
"set cindent

"Wrap line
set wrap

"Chinese support
set encoding=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set ambiwidth=double

"Format the statusline
"Nice statusbar
set laststatus=2
set statusline=
set statusline+=%2*%-3.3n%0*\ " buffer number
set statusline+=%f\ " file name
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=[
if v:version >= 600
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding}, " encoding
endif
set statusline+=%{&fileformat}] " file format
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
set statusline+=\ %{VimBuddy()} " vim buddy
endif
set statusline+=%= " right align
set statusline+=%2*0x%-8B\ " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" special statusbar for special window
if has("autocmd")
au FileType qf
\ if &buftype == "quickfix" |
\ setlocal statusline=%2*%-3.3n%0* |
\ setlocal statusline+=\ \[Compiler\ Messages\] |
\ setlocal statusline+=%=%2*\ %<%P |
\ endif

fun! FixMiniBufExplorerTitle()
if "-MiniBufExplorer-" == bufname("%")
setlocal statusline=%2*%-3.3n%0*
setlocal statusline+=\[Buffers\]
setlocal statusline+=%=%2*\ %<%P
endif
endfun

if v:version>=600
au BufWinEnter *
\ let oldwinnr=winnr() |
\ windo call FixMiniBufExplorerTitle() |
\ exec oldwinnr . " wincmd w"
endif
endif

" Nice window title
if has('title') && (has('gui_running') || &title)
set titlestring=
set titlestring+=%f\ " file name
set titlestring+=%h%m%r%w " flag
set titlestring+=\ -\ %{v:progname} " program name
endif

"Size of foding marks
set foldcolumn=2

"Disable IM in insert mode and search mode
set imsearch=0
set iminsert=0

"Show C space errors
"let c_space_errors=1

"Folding mode
set fdm=syntax

"display incomplete commands
set showcmd

"change statusbar color
set laststatus=2
if version >= 700
  au InsertEnter * hi StatusLine guibg=Green guifg=Black gui=bold
  au InsertLeave * hi StatusLine guibg=Black guifg=White gui=bold
endif

hi StatusLine guibg=Black guifg=White gui=bold


"Change buffer - without saving
set hid

"Tag List Setting
"nnoremap <silent> <F3> :WMToggle<CR>
nnoremap <silent> <F11> :TlistToggle<CR>
"let Tlist_Use_Right_Window = 1
"let Tlist_Show_Menu = 1
"let g:winManagerWindowLayout = 'FileExplorer,TagList|BufExplorer'

"Win Explorer
"map <c-w><c-t> :WMToggle<cr>
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>

"cvim Setting
let g:C_AuthorName      = '貓の中秋'
let g:C_AuthorRef       = '?'           
let g:C_Email           = 'bigsnake_net@@hotmail.com' 
let g:C_Company         = '?'

"IComplete Setting
autocmd Filetype cpp,c,java,cs set omnifunc=cppcomplete#Complete
autocmd! BufRead *.grm setlocal filetype=yacc

"Setting Color Scheme
if  has('gui_running')
    colorscheme darkblue
else
    colorscheme koehler
endif

"Wrap moving
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
"nnoremap <Down> gj
"nnoremap <Up> gk
"vnoremap <Down> gj
"vnoremap <Up> gk
"inoremap <Down> <C-o>gj
"inoremap <Up> <C-o>gk 
