call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Bottom Tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Multiple cursors and line mover
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'matze/vim-move'
let g:move_key_modifier = 'C'

" Line numbers and delimiters autocomplete
Plug 'Raimondi/delimitMate'
set number

" Syntax Highlighting
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Language Servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
	\ 'coc-json',
	\ 'coc-html',
	\ 'coc-css',
	\ 'coc-tsserver',
	\ 'coc-pyright',
	\ 'coc-prettier']


" Makes coc-prettier globally available via :Prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

call plug#end()
