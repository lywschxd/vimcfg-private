let mapleader=" "
let g:which_key_map = {}

" nerdcomment config
let g:which_key_map.c = {
      \ 'name' : '+Comment',
      \ }

" async run keybinding config
nmap <leader>ar :AsyncRun 
let g:which_key_map.a = {
      \ 'name' : '+Async-do-something',
      \ 'r'    : 'async-run',
      \ 's'    : [':AsyncStop', 'async-stop'],
      \ }

let g:which_key_map.d = {
      \ 'name' : '+Doxystyle',
      \ 'f'    : [':Dox', 'doxygen-file'],
      \ 'a'    : [':DoxAuthor', 'doxygen-author'],
      \ 'l'    : [':DoxLic', 'doxygen-license'],
      \ }


nmap <silent><c-]>    :Gtags <c-r><c-w><cr>
nmap <silent><leader>jd    :Gtags <c-r><c-w><cr>
nmap <silent><leader>jr    :Gtags -r <c-r><c-w><cr>
nmap <silent><leader>je    :Gtags -ge <c-r><c-w><cr>
nmap <silent><leader>jg    :Gtags -go <c-r><c-w><cr>
nmap <silent><leader>jc    :Gtags -f %<cr>
nmap <silent><leader>jf    :Gtags -P <c-r><c-f><cr>
nmap <silent><leader>js    :Gtags -s <c-r><c-w><cr>
nmap <silent><leader>jj    :GtagsCursor<cr>

nmap <silent><leader>jS    :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <silent><leader>jG    :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <silent><leader>jC    :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <silent><leader>jT    :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <silent><leader>jE    :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <silent><leader>jF    :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <silent><leader>jI    :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <silent><leader>jD    :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <silent><leader>jA    :cs find a <C-R>=expand("<cword>")<CR><CR>

let g:which_key_map.j = {
      \ 'name' : '+Jump',
      \ 'j'    : 'gtags-jump-definition-or-reference',
      \ 'd'    : 'gtags-jump-definition',
      \ 'r'    : 'gtags-jump-reference',
      \ 'e'    : 'gtags-jump-regexp-find',
      \ 'g'    : 'gtags-jump-grep',
      \ 'c'    : 'gtags-jump-current-file-symbol',
      \ 'f'    : 'gtags-jump-file',
      \ 's'    : 'gtags-jump-symbol',
      \ 'S'    : 'cscope-jump-symble',
      \ 'G'    : 'cscope-jump-definition',
      \ 'C'    : 'cscope-jump-reference',
      \ 'T'    : 'cscope-jump-text',
      \ 'E'    : 'cscope-jump-egrep',
      \ 'F'    : 'cscope-jump-file',
      \ 'I'    : 'cscope-jump-including',
      \ 'D'    : 'cscope-jump-call-func',
      \ 'A'    : 'cscope-jump-symbol-assigned',
      \ 'a'    : [':LeaderfFunction', 'leaderf-jump-current-functions'],
      \ 'b'    : [':LeaderfBufTag', 'leaderf-jump-current-tag'],
      \ 'h'    : [':LeaderfBufTagAll', 'leaderf-jump-all-tag'],
      \ }
      
      " \ 'd'    : 'gutentags-jump-definition',
      " \ 'r'    : 'gutentags-jump-reference',
      " \ 'e'    : 'gutentags-egrep-find',
      " \ 't'    : 'gutentags-text-find',
      " \ 'i'    : 'gutentags-find-file-include-this-file',
      " \ 'f'    : 'gutentags-find-this-file',
      " \ 's'    : 'gutentags-jump-symbol',
      " \ 'I'    : 'gutentags-jump-function-called-by-this-func',
      " \ 'A'    : 'gutentags-jump-this-symbol-is-assigned-value',

" private init config file 
let g:which_key_map.h = {
      \ 'name' : '+Help',
      \ 'i'    : [':call Open_vimcfg_file(g:vimrc_path)', 'open-vimrc'],
      \ 'p'    : [':call Open_vimcfg_file(g:plugin_manange_path)', 'open-vimplug'],
      \ 'k'    : [':call Open_vimcfg_file(g:keybind_cfg_path)', 'open-keybiding-config'],
      \ 'P'    : [':exec "NERDTreeFind" . g:plugin_cfg_dir', 'open-vimcfg-in-file-browser'],
      \ 'a'    : [':CocList maps', 'show-key-map'],
      \ 'b'    : [':CocList vimcommands', 'show-vimcmd-list'],
      \ 'c'    : [':CocList cmdhistory', 'show-vimcmd-history'],
      \ 'd'    : [':CocList colors', 'switch-vim-colorscheme'],
      \ 'e'    : [':CocList extensions', 'show-coc-extensions'],
      \ }

" vim quickfix open/close keybinding config
let g:which_key_map.q = {
      \ 'name' : '+Quickfix',
      \ 'o'    : [':botright cw', 'open-quickfix-win'],
      \ 'c'    : [':ccl', 'close-quickfix-win'],
      \ }

" tag config
nmap <silent><f2> :TagbarToggle<CR>
let g:which_key_map.t = {
      \ 'name' : '+Tag',
      \ 'l'    : [':TagbarToggle', 'open-tagbar-list'],
      \ }

" fzf and leaderf keybinding config
let g:Lf_ShortcutF = '<leader>ff'
nmap <leader>fl  :Locate 
nmap <leader>fL  :AsyncRun locate 
let g:which_key_map.f = {
      \ 'name' : '+File',
      \ 'f'    : 'leaderf-find-file',
      \ 'a'   : [':LeaderfFileFullScreen', 'leaderf-find-file-fullscreen'],
      \ 'F'    : [':Files', 'fzf-find-file'],
      \ 'l'    : 'locate-find-file',
      \ 'g'    : [':GFiles', 'git-find-file'],
      \ 'r'    : [':History', 'fzf-find-recent-file'],
      \ 't'    : [':NERDTreeToggle', 'file-tree-browser-toggle'],
      \ 'c'    : [':NERDTreeFind %', 'current-file-tree-browser'],
      \ 'L'    : 'async-locate-find-file',
      \ 's'    : [':Startify', 'open-startify'],
      \ 'b'    : [':CocList files', 'Coc-find-file'],
      \ 'd'    : [':CocList mru', 'Coc-find-recent-file'],
      \ }

" git keybinding config
let g:which_key_map.g = {
      \ 'name' : '+Git',
      \ 'b'    : [':Gblame', 'git-blame'],
      \ 's'    : [':Gstatus', 'git-status'],
      \ 'c'    : [':GV', 'git-all-commits'],
      \ 'C'    : [':GV!', 'git-curr-commits'],
      \ }


" window keybinding config
let g:which_key_map.w = {
      \ 'name' : '+Window',
      \ 'h'    : [':split',  'split horizontal window'],
      \ 'n'    : [':vertical new',  'new window'],
      \ 'k'    : [':q',      'close current window'],
      \ 'v'    : [':vsplit', 'split vertical window'],
      \ }



" search keybinding config
nmap <leader>si         :Tabularize /
vmap <leader>si         :Tabularize /
nmap <silent><leader>sA :AsyncRun ag --vimgrep <c-r><c-w><cr>
nmap <silent><leader>sG :AsyncRun grep -rn <c-r><c-w><cr>
nmap <silent><leader>sd :AsyncRun rg --vimgrep -rn <c-r><c-w><cr>
nmap <silent><leader>sa :Ag <c-r><c-w><cr>
nmap <silent><leader>sr :Rg <c-r><c-w><cr>

" Create mappings (with leader)
nmap <Leader>ss <Plug>(AerojumpSpace)
nmap <Leader>sb <Plug>(AerojumpBolt)
nmap <Leader>se <Plug>(AerojumpFromCursorBolt)
nmap <Leader>sh <Plug>LeaderfRgPrompt
nmap <Leader>sj <Plug>LeaderfRgCwordLiteralNoBoundary<cr>
nmap <Leader>sk <Plug>LeaderfRgCwordRegexNoBoundary<cr>

let g:which_key_map.s = {
      \ 'name' : '+Search-And-Style',
      \ 'a'    : 'ag-search',
      \ 'r'    : 'rg-search',
      \ 'i'    : 'indent-toggle',
      \ 'A'    : 'async-ag-search',
      \ 'G'    : 'async-grep-search',
      \ 'd'    : 'async-rg-search',
      \ 's'    : 'search-and-jump-space',
      \ 'b'    : 'search-and-jump-bolt',
      \ 'e'    : 'search-and-jump-from-cursor-bold',
      \ 'f'    : [':FlyGrep', 'async-flygrep-search'],
      \ 'c'    : [':CocList words', 'coc-search-in-current-buffer'],
      \ 'h'    : 'toggole-leaderf-search',
      \ 'j'    : 'leaderf-search-word-under-cursor',
      \ 'k'    : 'leaderf-regex-search-word-under-cursor',
      \ }
      " \ 'g'    : [':Grepper', 'async-grepper-search'],

" buffer keybinding config
let g:Lf_ShortcutB = '<leader>bt'
let g:which_key_map.b = {
      \ 'name' : '+Buffer',
      \ 'T'    : [':Buffers', 'fzf-buffers'],
      \ 't'    : 'leaderf-buffers',
      \ 'b'    : [':CtrlPBuffer', 'ctrlp-buffers'],
      \ 'a'    : [':CocList buffers', 'Coc-buffers'],
      \ 'p'    : [':bp', 'switch-prev-buffer'],
      \ 'n'    : [':bn', 'switch-next-buffer'],
      \ '1'    : [':b 1', 'switch buffer 1'],
      \ '2'    : [':b 2', 'switch buffer 2'],
      \ '3'    : [':b 3', 'switch buffer 3'],
      \ '4'    : [':b 4', 'switch buffer 4'],
      \ '5'    : [':b 5', 'switch buffer 5'],
      \ '6'    : [':b 6', 'switch buffer 6'],
      \ '7'    : [':b 7', 'switch buffer 7'],
      \ '8'    : [':b 8', 'switch buffer 8'],
      \ '9'    : [':b 9', 'switch buffer 9'],
      \ 'k'    : 'close current buffer',
      \ }
nmap <leader>bk :exec "bdelete" . bufnr("%")<cr>

" map key config for lightline-bufferline
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
let g:which_key_map.1 = 'switch to window 1'
let g:which_key_map.2 = 'switch to window 2'
let g:which_key_map.3 = 'switch to window 3'
let g:which_key_map.4 = 'switch to window 4'
let g:which_key_map.5 = 'switch to window 5'
let g:which_key_map.6 = 'switch to window 6'
let g:which_key_map.7 = 'switch to window 7'
let g:which_key_map.8 = 'switch to window 8'
let g:which_key_map.9 = 'switch to window 9'


" window manipulate keybinding config
nmap <silent><C-left> <C-W>h
nmap <silent><C-right> <C-W>l
nmap <silent><C-down> <C-W>j
nmap <silent><C-up> <C-W>k

" coc.nvim coclist keybind config
let g:which_key_map.e = {
      \ 'name' : '+CocList',
      \ 'a'    : [':CocList', 'CocList-toggle'],
      \ 'b'    : [':CocList marketplace', 'Coc-extensions-store'],
      \ 'c'    : ['<Plug>(coc-terminal-toggle)', 'Coc-terminal-toggle'],
      \ 'd'    : [':CocConfig', 'CocConfig-open'],
      \ 'e'    : [':CocCommand', 'coc-command-open'],
      \ }

"coc.nvim keybinding
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Map <tab> to trigger completion and navigate to the next item: >
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()


" which-key keybinding config
nnoremap <silent><leader> :WhichKey '<Space>'<CR>

" choose-wind keybinding config
nmap  \  <Plug>(choosewin)
