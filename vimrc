call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'doums/darcula'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

set termguicolors
colorscheme darcula

syntax enable
filetype plugin indent on

set modeline
set ls=2
set title
set number
set numberwidth=5
set autoindent

" Enable the cursor line across the screen
set cursorline

" Highlight search results
set hlsearch

" Set backspace to remove auto created whitespace and solve other issues
set backspace=indent,eol,start

" Status line at bottom of windows shows filename, edit, file type, line and column
set statusline=%F%h%m%r%y\ [\%{Tlist_Get_Tagname_By_Line()}]%=%c,%l/%L\ %P

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Default to 4 spaces instead of tabs
setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1

" For the following file types use 4 spaces instead of tabs
autocmd FileType cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType c setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType h setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType make setlocal tabstop=4 softtabstop=4 shiftwidth=4 foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType sh setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType java setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType kotlin setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType perl setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType ruby setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType proto setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1
autocmd FileType dart setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab foldmethod=syntax foldnestmax=10 nofoldenable foldlevel=1


" Allows Shift+Tab to go back one indentation level
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i

" Remove trailing whitespace on file save
autocmd FileType cpp,c,h,make,sh,java,kotlin,python,perl,ruby,text,xml,java,proto,yaml,html,javascript,dart autocmd BufWritePre <buffer> :%s/\s\+$//e

" Fix copy and pasting oddity. Normally after pasting text the copy register
" will be clear and selection will have to be selected and copied again.
" This changes the p character so that it does a p then selects the last
" selection (gv) then copies it (y).
xnoremap p pgvy
