set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'itchyny/lightline.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'sjl/badwolf'
Plugin 'airblade/vim-gitgutter'
Plugin 'dhruvasagar/vim-table-mode'
call vundle#end()
filetype plugin indent on
syntax on
set path+=**
command! MakeTags !ctags -R <CR>
set wildmenu
colorscheme badwolf
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
set backspace=indent,eol,start
set cursorline
nnoremap ; :
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent
set cindent
set ignorecase
set smartcase
set scrolloff=10
command! -nargs=+ Silent execute 'silent <args>' | redraw!
set noerrorbells visualbell t_vb=
highlight OverLength ctermbg=darkred ctermfg=grey
match OverLength /\%82v./
highlight cursorcolumn ctermbg=darkgrey
map <C-L> "kyy:echo system("screen -S $STY -p R -X stuff ".escape(shellescape(@k),"$"))<CR>j
vmap <C-L> "xy:echo system("screen -S $STY -p R -X stuff ".escape(shellescape(@x."\n"),"$"))<CR>j
map <C-M><C-M> :echo system("screen -S $STY -p R -X stuff ".shellescape("\014"))<CR>
map <C-K><C-K> :echo system("screen -S $STY -p R -X stuff ".shellescape("source('".expand('%:t')."')\n"))<CR><CR>
set t_Co=256
set spelllang=en
map <tab><tab> <C-^>
map <tab>n :bNext<CR>
map <tab>p :bprevious<CR>
map <tab>l :buffers<CR>:b
function! s:goyo_enter()
	set background=light
    colorscheme pencil
endfunction
function! s:goyo_leave()
	set background=dark
    colorscheme badwolf
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
map go :Goyo<CR>
map gl :GitGutter<CR>

