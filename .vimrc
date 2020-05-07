"开启256颜色支持
set t_Co=256

"状态栏总是显示
set laststatus=2

"nerdtree配置
map <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree  "自动开启Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "当NERDTree为剩下的唯一窗口时自动关闭
"打开当前文件所在位置
map <F3> :NERDTreeFind<CR>
"打开vim光标在文件中而不是树中
autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w

"显示行号
set number

"突出显示当前行
set cursorline

"tab长度为4个空格
set tabstop=4


"插件管理
call plug#begin('~/.vim/plugged')
"配色方案
Plug 'morhetz/gruvbox'
"颜色方案
colorscheme gruvbox
set background=dark    " Setting dark mode

"Plug 'flazz/vim-colorschemes'
"Plug 'jpo/vim-railscasts-theme'

"文件浏览器
Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'

"文件查找
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"Plug 'ctrlpvim/ctrlp.vim'

"状态栏
Plug 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

"文本选择
Plug 'terryma/vim-multiple-cursors'

call plug#end()
