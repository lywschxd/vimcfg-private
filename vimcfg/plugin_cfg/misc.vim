" we use vim in nocompatibal
set nocompatible
set nu
set relativenumber
set mouse=a
set smartindent
set cindent
set autoindent

let s:molokai_prefix = g:vims_prefix . 'plugged/molokai/colors'
if !empty(findfile("molokai.vim", s:molokai_prefix))
    colo molokai
endif

set ruler
set cursorline
" set cursorcolumn
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set autoread
syntax on
set background=dark
set nobackup
set mouse=h
set ignorecase
" if !has("nvim")
" set termwinsize=
" endif
set updatetime=500
set go=

if has("gui_running")
    
    set lines=54
    set columns=239

    if has("gui_gtk2")
        set guifont=Source\ Code\ Pro\ 10
    elseif has("x11")
        set guifont=Source\ Code\ Pro\ 10
    elseif has("gui_win32")
	    set guifont=Source\ Code\ Pro:h10

    endif

endif

" 兼容tmux
if exists('$TMUX')
    set term=screen-256color
endif

"记住最后一次编辑的位置
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" set line number
function! g:Nu_toggle()
    if 1 == &nu && 1 == &rnu
        set nonu
        set nornu
    else
        set nu
        set rnu
    endif
endfunction
command LineNumToggle call Nu_toggle()


" script demo
"
" let g:briq_tmp='/lib'
"
" if '/lib' == g:briq_tmp
"     echo "lksdjlksdjfklj"
"     let mm = 'cd ' . g:briq_tmp
"     echo mm
"     exec('cd ' . g:briq_tmp)
" endif

" let g:vimcfg_prefix=$HOME . '/.vim'
" let g:mhodddd = g:vimcfg_prefix . "/vimcfg/init_cfg/init_cfg_init.vim"
" echo g:mhodddd
" execute 'source ' . g:mhodddd
"

" function! g:Source_vims(vims)
"     for i in a:vims
"         echo i
"     endfor
" endfunction
"
" let mab=['a', 'b', 'c']
"
" call g:Source_vims(mab)
