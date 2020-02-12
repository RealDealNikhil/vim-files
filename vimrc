set nocompatible    " be iMproved, required
filetype off        " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'                   " let Vundle manage Vundle, required
Plugin 'altercation/vim-colors-solarized'       " solarized vim
Plugin 'scrooloose/nerdcommenter'               " nerdcommenter
Plugin 'scrooloose/nerdtree'                    " nerdtree for file system
Plugin 'vim-airline/vim-airline'                " vim airline
Plugin 'vim-airline/vim-airline-themes'         " themes for vim airline
Plugin 'ntpeters/vim-better-whitespace'         " highlights and cleans trailing whitespace
Plugin 'hdima/python-syntax'                    " alternative python syntax highlighting
Plugin 'easymotion/vim-easymotion'              " quickly search and jump to selection
Plugin 'vim-scripts/listmaps.vim'               " :Listmaps -> see which plugin set a map
Plugin 'pangloss/vim-javascript'                " nice js highlighting and indentation
Plugin 'mxw/vim-jsx'                            " jsx highlighting
Plugin 'othree/javascript-libraries-syntax.vim' " js libraries highlighting
Plugin 'tpope/vim-surround'                     " surround with quotes, parentheses, etc
Plugin 'yuttie/comfortable-motion.vim'          " nice scrolling
Plugin 'jeetsukumaran/vim-buffergator'          " buffer management
Plugin 'ctrlpvim/ctrlp.vim'                     " fuzzy finder
Plugin 'nathanaelkane/vim-indent-guides'        " better indent highlighting with <Leader>ig

" All of your plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

" buffers
set hidden

" Security
set modelines=0

" Line numbers
set number relativenumber

" Search
set ignorecase
set smartcase

" Tab formatting
set tabstop=4 shiftwidth=4 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

" PLUGIN SETTINGS

" NERDTRee
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" turn on highlighting
syntax enable
let python_highlight_all=1
set background=dark
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized
let g:used_javascript_libs='jquery,react'
highlight Visual cterm=NONE ctermbg=7 ctermfg=NONE guibg=Grey40

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" airline
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'
let g:airline_powerline_fonts=1
let g:airline#extensions#default#section_truncate_width = {
      \ 'a': 30,
      \ 'b': 100,
      \ 'c': 20,
      \ 'gutter': 100,
      \ 'f': 30,
      \ 'x': 20,
      \ 'y': 100,
      \ 'z': 30,
      \ 'warning': 200,
      \ 'error': 200,
      \ }
let g:airline_theme='solarized'
function! AirlineThemePatch(palette)
  if g:airline_theme == 'solarized'
    "greenish
    let a:palette.normal.airline_a = [ '#1c1c1c', '#5fff00', 234, 82 ]
    let a:palette.normal.airline_z = [ '#1c1c1c', '#5fff00', 234, 82 ]
    "blue
    let a:palette.visual.airline_a = [ '#ffffff', '#0087ff', 255, 33 ]
    let a:palette.visual.airline_z = [ '#ffffff', '#0087ff', 255, 33 ]
    "violetish
    let a:palette.insert.airline_a = [ '#3a3a3a', '#af00ff', 237, 129 ]
    let a:palette.insert.airline_z = [ '#3a3a3a', '#af00ff', 237, 129 ]
    "reddish
    let a:palette.replace.airline_a = [ '#ffffff', '#ff005f', 255, 197 ]
    let a:palette.replace.airline_z = [ '#ffffff', '#ff005f', 255, 197 ]
  endif
endfunction
let g:airline_theme_patch_func = 'AirlineThemePatch'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#fnametruncate = 10
