" 安装插件
call plug#begin()
Plug 'https://github.com/vim-scripts/fcitx.vim.git'

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" neovim的自动补全插件
Plug 'roxma/nvim-completion-manager'

" 自动补全括号插件
Plug 'Raimondi/delimitMate'

" 注释插件
Plug 'scrooloose/nerdcommenter'

" 注释插件2
Plug 'chemzqm/mycomment.vim'  " 使用简单 只需要<leader>c 注释，<leader> cc 反注释

" 侧栏插件
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()





" 插件设置

" neovim的自动补全插件的设置
" 使用TAB选择弹出菜单
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" 关闭提醒
set shortmess+=c

" 自动补全括号插件设置
" for python docstring ", 特别有用 用于Python字符串
au FileType python let b:delimitMate_nesting_quotes = ['"']
" 关闭某些类型文件的自动补全
au FileType mail let b:delimitMate_autoclose = 0
" 使用方法： enter确认并调到下一行，tab 向下选择，shift+tab向上选择

" 注释插件设置
" 在默认情况下添加注释分隔后的空间
let g:NERDSpaceDelims = 1
" 使用紧凑语法美化多行
let g:NERDCompactSexyComs = 1
" 使用方法： 在可视或普通模式下用 ，cc 注释  ，cu反注释
" 注意：只是用与c或c++

" NERDTree 侧栏设置
map <C-n> :NERDTreeToggle<CR> " 更改映射为 Ctrl+n
" 基本设置

" 开启行号
set nu  
" 设置TAB大小
set tabstop=4
" 设置缩进大小
set shiftwidth=4
" 修改esc映射
imap jk <Esc>
vmap jk <Esc> 

" 设置高亮当前行
"set cursorcolumn " 竖行
set cursorline  " 横行

" 修改leader映射
let mapleader=","

" 关于Python快速注释方法
" 1.Ctrl + v , 选中注释行
"2.shift + i, 进入insert 模式
"3. 输入#
"ESC 退出 insert 模式
"多行注释完成
"解除多行注释
"1.Ctrl + v , 选中注释行
"2.x
"完成

" 主题设置
syntax enable         " 启用语法
set background=dark   " 设置背景
colorscheme solarized " 设置主题
let g:solarized_termcolors=256 " 开启真色彩
