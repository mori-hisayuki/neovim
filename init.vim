" encode setting
set encoding=utf-8
" edita setting
set number							                            " 行番号表示
set splitbelow                                      " 水平分割時に下に表示
set noequalalways                                   " 分割時に自動調整を無効化
set wildmenu                                        " コマンドモードの補完 
" cursorl setting
set ruler							                              " カーソルの位置表示  
set cursorline							                        " カーソルハイライト
" tab setting
set expandtab							                          " tabを複数のspaceに置き換え
set tabstop=2							                          " tabは半角4文字
" tarminal setting
set sh=zsh

" ------------------------------------------------------------
" dein.vim set up
" ------------------------------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Pluginディレクトリのパス
let s:dein_dir = expand('~/.vim/dein')
" dein.vimのパス
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" tomlのディレクトリへのパス
let s:toml_dir = expand('~/.config/nvim')

" Required:
execute 'set runtimepath^=' . s:dein_repo_dir

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " 起動時に読み込むプラグイン群のtoml
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
  call dein#load_toml(s:toml_dir . '/tomls/html_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
" defult nop
vnoremap  <Up>     <nop>
vnoremap  <Down>   <nop>
vnoremap  <Left>   <nop>
vnoremap  <Right>  <nop>
vnoremap  <BS>     <nop>
inoremap  <Up>     <nop>
inoremap  <Down>   <nop>
inoremap  <Left>   <nop>
inoremap  <Right>  <nop>
inoremap  <BS>     <nop>
noremap   <Up>     <nop>
noremap   <Down>   <nop>
noremap   <Left>   <nop>
noremap   <Right>  <nop>
noremap   <BS>     <nop>
" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>					        " init.vim呼び出し
noremap N :set number<CR>
noremap NN :set nonumber<CR>
noremap <Space>s :source $MYVIMRC<CR>					        " init.vim読み込み
noremap <Space>w :<C-u>w<CR>					                " ファイル保存
noremap <Space>t :split<CR>:terminal<CR><C-u>i                              " terminal起動
noremap <silent><C-h> <C-w>h
noremap <silent><C-j> <C-w>j
noremap <silent><C-k> <C-w>k
noremap <silent><C-l> <C-w>l
noremap <silent>> <C-w>>
noremap <silent>< <C-w><

" Insert Mode
inoremap <silent> jj <ESC>:<C-u>w<CR>:<C-u>source $MYVIMRC<CR>	" InsertMode抜けて保存・読み込み
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

" Terminal Mode
tnoremap <C-n> <C-\><C-n>

