" Disable compatibility with Vi.
set nocompatible

" Do not load defaults.
let skip_defaults_vim=1

" Enable filetype plugins.
filetype plugin indent on

" Set default color scheme.
colorscheme default

" Use proper background color.
if $TERM_PROGRAM ==? "Apple_Terminal"
    let s:mode = trim(system("defaults read -g AppleInterfaceStyle"))
    if s:mode ==? "dark"
        set background=dark
    else
        set background=light
    endif
else
    set background=light
endif

" Enable syntax highlighting.
syntax enable

" Trim trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Save the file with sudo by invoking :W.
command! W w !sudo tee % > /dev/null

" Open a netrw split window below the current one and a preview on the right.
let g:netrw_alto=0

" Open a netrw split window right of the current one.
let g:netrw_altv=1

" Suppress netrw banner.
let g:netrw_banner=0

" Show netrw preview in a vertically split window.
let g:netrw_preview=1

" Define mapleader.
let g:mapleader="\<Space>\<Space>"

" Don't run 'man' to lookup the keyword under ther cursor.
nmap K <nop>

" Disable search highlighting.
nmap <silent> <Leader>nh :nohlsearch<CR>:let @/=''<CR>

" Toggle paste mode.
nmap <silent> <Leader>p :set paste!<CR>:set paste?<CR>

" List buffers and prepare to enter buffer name.
nmap <Leader>b :ls<CR>:b<Space>

" Prepare to enter file name to edit.
nmap <Leader>e :edit **/

" Copy indent from current line when starting a new line.
set autoindent

" When a file has been detected to have been changed outside of Vim and it
" has not been changed inside of Vim, automatically read it again.
set autoread

" Allow backspacing over autoindent, line breaks and the start of insert.
set backspace=indent,eol,start

" Set the character encoding.
set encoding=utf8

" Use the appropriate number of spaces to insert a <Tab>.
set expandtab

" Hide the buffer when it is abandoned.
set hidden

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" Ignore case in a pattern.
set ignorecase

" While typing a search command, show where the pattern, as it was typed so far, matches.
set incsearch

" Cyrillic mapping.
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Do not redraw while executing macros, registers and other commands that have not been typed.
set lazyredraw

" Do not leave a backup after overwriting a file.
set nobackup

" Do not create a swapfile for a new buffer.
set noswapfile

" Print the line number in front of each line.
set number

" Show the line and column number of the cursor position, separated by a comma.
set ruler

" Show the line number relative to the line with the cursor in front of each line.
set relativenumber

" Set the number of spaces to use for each step of (auto)indent and the
" number of spaces that a <Tab> in the file counts for.
set shiftwidth=4
let &tabstop=&shiftwidth

" Override the 'ignorecase' option if the search pattern contains upper case characters.
set smartcase

" Make <Tab> in front of a line insert blanks according to 'shiftwidth' and
" <BS> to delete a 'shiftwidth' worth of space at the start of the line.
set smarttab

" Open a split window below the current one.
set splitbelow

" Open a split window right of the current one.
set splitright

" Disable maximum width of text that is being inserted.
set textwidth=0

" The time in milliseconds that is waited for a key code or mapped key sequence to complete.
set timeoutlen=500

" Disable viminfo file.
set viminfo=

" Ignore files that match with one of these patterns when expanding wildcards.
set wildignore+=*~$,*/\.git/*,*/node_modules/*,*\.map$

" Ignore case when completing file names.
set wildignorecase

" Display list of matches when completing commands and file names.
set wildmenu
