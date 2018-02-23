" set visual bell
set vb

filetype on

" Perl Specific
autocmd FileType perl set nu
autocmd FileType perl set number
let perl_extended_vars = 1    "syntax color complex things 

" Python
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab autoindent fileformat=unix encoding=utf-8 
autocmd FileType python set number
let python_highlight_all=1

" C
autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab autoindent fileformat=unix  nu
autocmd FileType c set number

" Cpp
autocmd FileType cpp setlocal ts=4 sts=4 sw=4 expandtab autoindent fileformat=unix  nu
autocmd FileType cpp set number

" Yaml specific
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml set number

" Color scheme
colo slate
colo peachpuff " looks nice with white background


" Remove the netrw header
let g:netrw_banner=0


" syntax highlighting 
syntax on

" adds line under the cursor
set cursorline

" shows matching brace
set showmatch


" have Vim jump to the last position when reopening a file
if  has("autocmd")
	 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*.o,*.gif,*.jpb,*.png,.git,.svn,*.tmp

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on

