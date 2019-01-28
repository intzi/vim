
" Some Basics
set nocompatible
set number 
set relativenumber
set encoding=utf-8
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>
" /Some Basics


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "File Search fzf
Plug 'junegunn/fzf.vim' " File Search fzf
Plug 'itchyny/lightline.vim' " A light and configurable statusline/tabline plugin for Vim
Plug 'terryma/vim-multiple-cursors' " Multiple cursors. Select text from many places and replace at once
Plug 'tpope/vim-eunuch' " Linux Commands in Vim
Plug 'scrooloose/nerdtree' " NerdTree FileBrowser
Plug 'Xuyuanp/nerdtree-git-plugin' " NerdTree FileBrowser
Plug 'w0rp/ale' " Code syntax check
"Plug 'dansomething/vim-eclim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" Plugin Settings
let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
"You can also configure fixers for applying formatting on save:

let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1
" End Plugin Settings

" Mappings
map <C-o> :NERDTreeToggle<CR>
" End Mappings
