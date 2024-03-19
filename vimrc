" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim




" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark
"highlight clear SpellBad
"highlight SpellBad ctermfg=red cterm=underline
" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)



"filetype on
filetype plugin on
filetype indent on

inoremap <A-PageDown> <Esc>:tabnext<CR>
vnoremap <A-PageDown> <Esc>:tabnext<CR>
nnoremap <A-PageDown> <Esc>:tabnext<CR>

inoremap <A-PageUp> <Esc>:tabprevious<CR>
vnoremap <A-PageUp> <Esc>:tabprevious<CR>
nnoremap <A-PageUp> <Esc>:tabprevious<CR>

inoremap <A-Up> <Esc>:wincmd k<CR>
vnoremap <A-Up> <Esc>:wincmd k<CR>
nnoremap <A-Up> <Esc>:wincmd k<CR>

inoremap <A-Down> <Esc>:wincmd j<CR>
vnoremap <A-Down> <Esc>:wincmd j<CR>
nnoremap <A-Down> <Esc>:wincmd j<CR>

inoremap <A-Right> <Esc>:wincmd l<CR>
vnoremap <A-Right> <Esc>:wincmd l<CR>
nnoremap <A-Right> <Esc>:wincmd l<CR>

inoremap <A-Left> <Esc>:wincmd h<CR>
vnoremap <A-Left> <Esc>:wincmd h<CR>
nnoremap <A-Left> <Esc>:wincmd h<CR>

inoremap <A-k> <Esc>:wincmd k<CR>
vnoremap <A-k> <Esc>:wincmd k<CR>
nnoremap <A-k> <Esc>:wincmd k<CR>

inoremap <A-j> <Esc>:wincmd j<CR>
vnoremap <A-j> <Esc>:wincmd j<CR>
nnoremap <A-j> <Esc>:wincmd j<CR>

inoremap <A-l> <Esc>:wincmd l<CR>
vnoremap <A-l> <Esc>:wincmd l<CR>
nnoremap <A-l> <Esc>:wincmd l<CR>

inoremap <A-h> <Esc>:wincmd h<CR>
vnoremap <A-h> <Esc>:wincmd h<CR>
nnoremap <A-h> <Esc>:wincmd h<CR>

xnoremap p pgvy

set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set number

set wildmode=longest,list,full
set wildmenu
set incsearch
:color desert
set autoindent
set cindent

if match($TERM, "screen") != -1
	set term=xterm
endif

"Changes for vim-latex

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
