" Ctrl+u: fix aoutoindent insertion 
inoremap <silent> <C-u> <ESC>u:set paste<CR>.:set nopaste<CR>gi

" При редактировании файлов с длинными строками курсор часто «скачет» и
" передвигается не туда, куда хотелось бы. Сделаем, чтобы поведение курсора
" было похоже на обычные текстовые редакторы (вроде KWrite)
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>

" F11: Включить\выключить нумерацию строк,
" F2: Сохранить текущий буфер
" F10: Закрыть буфер
" F4: список буферов
" Ctrl+o: открыть файл
imap <silent> <F11> <Esc>:set<Space>nu!<CR>a
nmap <silent> <F11> :set<Space>nu!<CR>
nmap <silent> <F12>  <Esc><Esc>:Tlist<CR>
imap <silent> <F12>  <Esc><Esc>:Tlist<CR>
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i
imap <C-Space> :<C-x> <C-o><cr>
map <silent> <C-o>        :Explore<CR>
imap <silent> <C-o>   <Esc>:Explore<CR>
imap <F10> <Esc>:bd<CR>a
nmap <F10> :bd<CR>
imap <F4> <Esc>:buffers<CR>
nmap <F4> :buffers<CR>

" 'умный' Home
nmap <Home> ^
imap <Home> <Esc>I

" Работа со вкладками: 
" Ctrl+Left: Сделать активным предыдущую вкладку,
" Ctrl+Right: Сделать активным следующую вкладку,
" Ctrl+t: Открыть новую вкладку
map <C-Left> :tabprevious<cr>
nmap <C-Left> :tabprevious<cr>
imap <C-Left> <ESC>:tabprevious<cr>i
map <C-Right> :tabnext<cr>
nmap <C-Right> :tabnext<cr>
imap <C-Right> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>:e .<cr>
imap <C-t> <ESC>:tabnew<cr>:e .<cr>

" F3: переключиться в режим вставки
" Ctrl+u: поправить текст после вставки
set pastetoggle=<F3>
inoremap <silent> <C-u> <ESC>u:set paste<CR>.:set nopaste<CR>gi

" Ctrl+space: показать окно автодополнения
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" F9: make команда
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" F8: переключение кодировки
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set wildmenu
set wcm=<Tab>
menu Encoding.CP1251   :e ++enc=cp1251<CR>
menu Encoding.CP866    :e ++enc=cp866<CR>
menu Encoding.KOI8-U   :e ++enc=koi8-u<CR>
menu Encoding.UTF-8    :e ++enc=utf-8<CR>
map <F8> :emenu Encoding.<TAB>

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
imap <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
vmap <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""""""""""" Автозавершение слов по tab
function InsertTabWrapper()
     let col = col('.') - 1
     if !col || getline('.')[col - 1] !~ '\k'
         return "\<tab>"
     else
         return "\<c-p>"
     endif
endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов 
set complete+=t

