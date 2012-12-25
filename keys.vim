" Use * just to highlight the next found pattern - not jump
nnoremap * *N
vnoremap * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>

" Switch off highlight
nnoremap <S-F8> :nohlsearch<CR>

" Fix cursor
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk

nnoremap ; :

" Search for the word under the cursor in the current directory 
"set switchbuf+=newtab
"nmap <C-g> :execute " grep -srnw --binary-files=without-match " . shellescape("<cWORD>") . " . " <cr>:copen<cr><C-w>w <F10>

" Select last edit (e.g. paste)
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv

" Map <Space> to / (search)
map <space> /

" Ctrl-F5: substitute word under cursor globally
" F5:      ask for confirmation
" F8:      check syntax
" F11:     switch over lines numeration
" F2:      save current buffer
" F10:     close current buffer
" F4:      show list of buffers
" Ctrl+o:  open new file
nnoremap <C-F5> :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <F5> :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
imap <silent> <F11> <Esc>:set<Space>nu!<CR>a
nmap <silent> <F11> :set<Space>nu!<CR>
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i
"imap <C-Space> :<C-x> <C-o><cr>
"map  <silent> <C-o>      :CtrlPMixed<CR>
"imap <silent> <C-o> <Esc>:CtrlPMixed<CR>
let g:ctrlp_map = '<c-o>'
imap <F10> <Esc>:bd<CR>a
nmap <F10> :bd<CR>
imap <F4> <Esc>:buffers<CR>
nmap <F4> :buffers<CR>
imap <F8> <ESC>:SyntasticCheck<CR>
vmap <F8> :SyntasticCheck<CR>
nmap <F8> :SyntasticCheck<CR>

" Smart Home
nmap <Home> ^
imap <Home> <Esc>I

" Switch to alternative source file
map <silent> <C-a> :A<cr>

" make :W to :w
cnoreabbrev W w
cnoreabbrev Wa wa

" make :Q to :q
cnoreabbrev Q q
cnoreabbrev Qa qa

" Split braces (put braces in seperate lines, add indentation)
fun! SplitBracesCR()
  if strpart(getline('.'), col('.') - 2, 2) == '{}'
    return "\<CR>\<CR>\<Up>\<Tab>"
  endif
  return "\<CR>"
endfun
inoremap <CR> <C-R>=SplitBracesCR()<CR>

"""""""""""""""""""""""""""" Tabs 
" Ctrl+l: next tab
" Ctrl+h: prev tab
" Ctrl+t: open new tab
map <silent> <C-h> :tabprevious<cr>
nmap <silent> <C-h> :tabprevious<cr>
imap <silent> <C-h> <ESC>:tabprevious<cr>
map <silent> <C-l> :tabnext<cr>
nmap <silent> <C-l> :tabnext<cr>
imap <silent> <C-l> <ESC>:tabnext<cr>
nmap <silent> <C-t> :tabnew<cr>:e .<cr> :CtrlPMixed<cr>
imap <silent> <C-t> <ESC>:tabnew<cr>:e .<cr> :CtrlPMixed<cr>

fu! TabMoveLeft()
  let current_tab = tabpagenr()
  if current_tab > 1
     let current_tab = current_tab - 2
     execute 'tabmove' current_tab
  endif
endf
fu! TabMoveRight()
let current_tab = tabpagenr()
  execute 'tabmove' current_tab
endf

" Move tab left
nmap <silent>th :call TabMoveLeft()<CR>
vmap <silent>th <ESC>:call TabMoveLeft()<CR>

" Move tab right
nmap <silent>tl :call TabMoveRight()<CR>
vmap <silent>tl <ESC>:call TabMoveRight()<CR>

" F3: switch paste mode
map <F3> :set paste<CR>i
imap <F3> <ESC>:set paste<CR>i<Right>
au InsertLeave * set nopaste

" Easy switch between windows
nmap <tab><tab> <C-w>w

" Ctrl+space: show autoindent window
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
imap <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
vmap <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" Change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Words for autoindentation
set complete=""
" From current buffer
set complete+=.
" From dictionary
set complete+=k
" From another buffers
set complete+=b
" From tags
set complete+=t

" Execute make and show the errors
if filereadable("Makefile")
    set makeprg=make\ -j4
    map <C-b> :make<CR>:cw<CR>
else
    map <C-b> :make %:r<CR>:cw<CR>
endif

" Buffer naviation
map <M-Left>  :bprevious<CR>
map <M-Right> :bnext<CR>

" Keys to opn tools-windows
nmap <silent> <F12>      :TagbarToggle<CR>
vmap <silent> <F12> <esc>:TagbarToggle<CR>
imap <silent> <F12> <esc>:TagbarToggle<CR>

