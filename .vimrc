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

" Line numbers and delimiters autocomplete
Plug 'Raimondi/delimitMate'
set number

" Language Servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
        \ 'coc-json',
        \ 'coc-yaml',
        \ 'coc-prettier']

" Makes coc-prettier globally available via :Prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

call plug#end()
