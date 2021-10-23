" ------------------
" | Vundle Plugins |
" ------------------
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent off    " required
set encoding=utf-8

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique à Vundle de s'auto-gérer
Plugin 'VundleVim/Vundle.vim'  

" All of your Plugins must be added before the following line
call vundle#end()            " requiredmorhetz/gruvbox
filetype plugin indent on    " required

" auto pairs (),"",'',...
Plugin 'jiangmiao/auto-pairs'

" check syntax for programming langage
" see recommended settings line 148
Plugin 'scrooloose/syntastic'

" begin : snipmate
Plugin 'garbas/vim-snipmate'
let g:snipMate = { 'snippet_version' : 1 }
" to avoid the f warning before launching vim
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" end : snipmate

Plugin 'loremipsum'
" Plugin 'YouCompleteMe'

" Colortheme
" Plugin 'Royal-Colorschemes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'morhetz/gruvbox'

"============================== HOW TO ======================================
" to install a plugin : git clone that plugin in 'bundle/' and  add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin : remove the repository and its line here and run :PluginClean
"OU
" :PluginList
" puis se déplacer sur la ligne du plugin qu'on veut supprimer et faire :
" SHIFT+D
"============================================================================

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

"============================================================================

" --------
" | Vrac |
" --------

" Enable syntax highlighting
syntax on

" Command-line completion
set wildmenu
" see ":help wildmenu' for more details

set wrap
set linebreak
set showmatch   "Highlight matching brace
set guioptions-=r " Removes right hand scroll bar

" -------------
" | match < > |
" -------------

" :hi OpenTag guibg=green "ctermbg=green
" :hi CloseTag guibg=green "ctermbg=blue
" :match OpenTag /</
" :2match CloseTag />/


"---------------
" | Indentation |
" ---------------

set autoindent
set smartindent

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab


" Use visual bell instead of beeping when doing something wrong
" set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" Count pattern found by a '/' search
set shortmess-=S

" Always show cursor position
set ruler

" recherche en ignorant majuscule ou minuscule SI on tape en minuscule
set ignorecase
" SI on tape une recherche en majuscule => maj ou min pris en compte
set smartcase
" recherche incrémentale
set incsearch
" highlight
" set hlsearch
" appui sur * sur un mot pour le rechercher dans le document depuis le début



" --------------
" | Auto-close |
" --------------

" pour l'édition LaTeX
inoremap $$ $$$$<Esc>hi


" ---- LaTeX ----
let g:tex_flavor='latex'


" ---- Compilation ----

" ===== C =====
" Pour sauver, compiler et exécuter rapidement un fichier en C
" en mode <ESC>, taper ("dans le vide") gcc
map <F3> :w <CR> :!gcc % && ./a.out <CR>
" % is to take the current filename

" ===== C++ =====
" idem que pour le map du C
map <F4> :w <CR> :!g++ % && ./a.out <CR>

" ===================

" ===== JAVA =====
map sout<Tab> i<C-T>System.out.println("");<Esc>F"i


" ==== Colorscheme =====
set t_Co=256
set t_ut=
colorscheme codedark


"highlight Cursorline = green
"let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox



" True Colors are a requirement for color scheme

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
" To enable if we want (~change the default colors)
 
" if (has('termguicolors'))
"   set termguicolors
" endif


" ==== VIM STATUS BAR ====

set laststatus=2

" set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}


" set statusline=[%n]\ %F\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ %=[%M%R%H%W%Y]\ l:%l c:%c\ \|\ L:%L\ \|\ %p%%

set statusline=%9*[%n]
set statusline+=%9*\ 
set statusline+=%1*%<%f
" set statusline+=%m%R%H%W
" set statusline+=%1*%{&modified?'[+]\ ':''}
set statusline+=%2*%{&modified?'[+]':''}
" set statusline+=%1*%{&readonly?'\ ':''}
set statusline+=%3*%{&readonly?'🔒':''}
set statusline+=%<
set statusline+=%=
set statusline+=%4*[%Y]\ 
set statusline+=%4*l:%l/%L\ \|\ c:%c\ 
set statusline+=%4*\\|\ %p%%\ 

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

" buffer number
" hi User0 guifg=#ffffff guibg=#E0444A
" hi User0 guifg=#ffffff guibg=#E0444A
" file path/name
hi User1  gui=bold,italic
" mofified file ?
hi User2 guifg=#ffffff  guibg=#FF0000
" read-only file ?
hi User3 guifg=#ffffff
" raw,col
hi User4 guifg=#ffffff  guibg=#005FFF
" %9* doesn't exist, it's just to avoid like a space in the chosen color

" ==== END VIM STATUS BAR ====

" Disable all blinking:
set guicursor+=a:blinkon0


" PYTHON auto indent
set cindent
autocmd FileType python setlocal foldmethod=indent smartindent shiftwidth=4 ts=4 et cinwords=if,elif,else,for,while,try,except,finally,def,class

