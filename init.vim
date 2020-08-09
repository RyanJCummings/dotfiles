call plug#begin("~/.vim/plugged")
	" Plugin Section
    Plug 'AlessandroYorba/alduin'
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
	Plug 'leafgarland/typescript-vim'
	Plug 'peitalin/vim-jsx-typescript'	
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"CONFIG SECTION

if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
	set t_8b=\[[48;2;%lu;%lu;%lum
	set termguicolors
endif

" dracula
"if (has("termguicolors"))
 "set termguicolors
"endif

syntax enable
"colorscheme draculaa
colorscheme alduin

"-------------------------------------------------------------------------------

"File Search Configuration

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" ------------------------------------------------------------------------------

" file tree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" ------------------------------------------------------------------------------

" Integrated Terminal Configuration
 
"open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" ------------------------------------------------------------------------------

" Panel Navigation Configuration

"use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" -------------------------------------------------------------------------------

set number
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set cindent
hi Normal guibg=NONE ctermbg=NONE
