" Use * just to highlight the next found pattern - not jump
set nohlsearch
let g:highlighting = 0
function! Highlighting()
  if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
    let g:highlighting = 0
    return ":silent nohlsearch\<CR>"
  endif
  let @/ = '\<'.expand('<cword>').'\>'
  let g:highlighting = 1
  return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <CR> Highlighting()
nnoremap <silent> <expr> * Highlighting()
vnoremap * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>

" Paste without yanking
vnoremap p "_dP

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

" Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv

" Map <Space> to / (search)
map <space> /

" F2:      save current buffer (Ctrl-F5: substitute word under cursor globally)
" F3:      switch paste mode
" F4:      context menu
" F5:      -
" F6:      -
" F7:      replace (ask for confirmation)
" F8:      toggle  indent guides
" F9:      top menu
" F10:     close current buffer
" F11:     switch over lines numeration
" F12:     toggle TagBar
nnoremap <F2> :w<cr>
vnoremap <F2> :w<cr>
inoremap <F2> <esc>:w<cr>i
map <F3> :set paste<CR>i
imap <F3> <ESC>:set paste<CR>i<Right>
nnoremap <silent><F4> :call quickui#tools#clever_context('k', g:context_menu_k, {})<cr>
nnoremap <C-F7> :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <F7> :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
map <F8> :IndentGuidesToggle<CR>
nnoremap <F9> :call quickui#menu#open()<cr><cr>
map <F9> :call quickui#menu#open()<cr><cr>
imap <F9> <Esc>:call quickui#menu#open()<cr><cr>
imap <F10> <Esc>:tabclose<CR>a
nmap <F10> :tabclose<CR>
imap <silent> <F11> <Esc>:set<Space>nu!<CR>a
nmap <silent> <F11> :set<Space>nu!<CR>
nmap <silent> <F12>      :TagbarToggle<CR>
vmap <silent> <F12> <esc>:TagbarToggle<CR>
imap <silent> <F12> <esc>:TagbarToggle<CR>

au InsertLeave * set nopaste

" Move up and down easier
let g:C_Ctrl_j = 'off'
nmap <C-j> <C-d>
nmap <C-k> <C-u>

" USe sudo to save a file
cnoremap w!! w !sudo tee % >/dev/null

" I can type :help on my own, thanks.
noremap <F1> <Esc>

" Quick (v)split
nnoremap <silent> ss :split<CR>
nnoremap <silent> vv :vsplit<CR>

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

" fix slight delay after pressing ESC then O or I
set timeout timeoutlen=1000 ttimeoutlen=100

" make K split lines (opposite of J)
nmap K i<cr><esc>k$

" Don't add the comment prefix when I hit enter or o/O on a comment line.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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
nmap <silent> <C-t> :tabnew<cr>:e .<cr>:FzfProjectFiles<cr>
map <silent> <C-t> <ESC>:tabnew<cr>:e .<cr>:FzfProjectFiles<cr>

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
map <C-F12> :call UpdateTags()<CR>
imap <C-F12> :call UpdateTags()<CR>
vmap <C-F12> :call UpdateTags()<CR>

" Change the mapleader from \ to ,
let mapleader=","

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

" Buffer navigation
map <M-Left>  :bprevious<CR>
map <M-Right> :bnext<CR>
