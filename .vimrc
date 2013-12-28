set nocompatible " be iMproved

filetype off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/bundle/'))
endif
	NeoBundle 'Shougo/neobundle.vim'
	NeoBundle 'Shougo/vimproc'
	NeoBundle 'VimClojure'
	NeoBundle 'Shougo/vimshell'
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'Shougo/neocomplcache'
	NeoBundle 'Shougo/neosnippet'
	NeoBundle 'jpalardy/vim-slime'
	NeoBundle 'scrooloose/syntastic'
	NeoBundle 'mattn/zencoding-vim'
	NeoBundle 'vim-scripts/mru.vim'
	NeoBundle 'kchmck/vim-coffee-script'
	NeoBundle 'tpope/vim-surround'
	NeoBundle 'nathanaelkane/vim-indent-guides'
	NeoBundle 'AtsushiM/css-skelton.vim'
	NeoBundle 'AtsushiM/RetinaResize'
	" NeoBundle 'leafgarland/typescript-vim'
	

	NeoBundle 'ujihisa/unite-colorscheme'
	NeoBundle 'tomasr/molokai'
	NeoBundle 'nanotech/jellybeans.vim'
	NeoBundle 'altercation/solarized'
	NeoBundle 'vim-scripts/newspaper.vim'
	NeoBundle 'therubymug/vim-pyte'


"map settings.
nnoremap <D-i> <ESC>
inoremap <D-i> <ESC>
vnoremap <D-i> <ESC>
cnoremap <D-i> <ESC>
onoremap <D-i> <ESC>
map <F1> :MRU<Enter>
map <F2> :NERDTreeToggle<Enter>
nnoremap ,cw :<C-u>CoffeeCompile watch vert<CR>
nnoremap ,rr :<C-u>RetinaResize<CR>
nnoremap ,cs :<C-u>CssSkelton<CR>
nnoremap ,cp :<C-u>CssPaste<CR>


"zencoding-key
let g:user_zen_expandabbr_key = '<c-e>'

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
let g:neocomplcache_enable_auto_select = 1 " 1番目の候補を自動選択

" indent guides
let g:indent_guides_enable_on_vim_startup=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=gray
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgray

" dictionary settings
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'javascript' : $HOME . '/.vim/dict/javascript.dict',
    \ 'coffee' : $HOME . '/.vim/dict/javascript.dict',
    \ 'cs' : $HOME . '/.vim/dict/unity.dict'
    \ }

" filetype 設定
augroup filetypedetect
  au BufRead,BufNewFile *.scss set filetype=css
  au BufRead,BufNewFile *.ts set filetype=javascript
augroup END

"tab settings.
"set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"閉じタグhtml
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
augroup END




"set
:set noswapfile
:set nobackup
:set nu

filetype plugin indent off " required!
syntax on
