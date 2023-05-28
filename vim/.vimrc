call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
Plug 'preservim/nerdtree'
Plug 'tomasr/molokai'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


"以下為通用設定

set backspace=2

"顯示行號
set nu

"語法高亮
syntax on

"滑鼠可用
set mouse=a

"縮排間隔數
set tabstop=4
set softtabstop=4

"自動縮排對齊間隔數
set shiftwidth=4

"tab鍵換成space
set expandtab

"自動對齊縮排
set autoindent

"自動補齊括號
inoremap {<CR> {<CR>}<Esc>ko
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

"顯示鼠標位置
set ruler

"縮進指示線
let g:indentLine_enabled = 1

colorscheme molokai