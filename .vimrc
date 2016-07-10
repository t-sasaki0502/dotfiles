	
"show number
set number

"set terminal color
if &term =~ "xterm-256color" || "screen-256color"
        set t_Co=256
        set t_Sf=<1b>[3%dm
endif

"vim screen split
nnoremap s <Nop>
nnoremap s% :vsplit<CR>
nnoremap s" :split<CR>

"vim move screen
nnoremap  sl <C-w>l
nnoremap  sj <C-w>j
nnoremap  sh <C-w>h
nnoremap  sk <C-w>k

"vim tab
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT

"indent setting
set autoindent
set smartindent

"Taglist.vim setting

set tags=tags
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let g:Tlist_Show_One_File = 1
let g:Tlist_Use_Right_Window = 1
let g:Tlist_Exit_OnlyWindow = 1
nmap <C-l> :TlistToggle<CR>

"NERDTree.vim setting

let g:NERDTreeDirArrows = 0
nmap <C-i> :NERDTreeToggle<CR>
nnoremap <C-N> gt
nnoremap <C-P> gT

"Calendar

nmap <C-c> :Calendar<CR>
let g:calendar_views = [ 'year', 'month', 'day_3', 'clock' ]
let g:calendar_google_calendar =1
let g:calendar_google_task = 1

"ALLToggle
nmap <C-x> :NERDTreeToggle<CR> :TlistToggle<CR> 

"" neocomplcache

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 30
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_dictionary_filetype_lists = {
	\ 'default' : ''
	\ }

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

""" Color Setting
""" Solarized.vim

let g:solarized_termcolors=16
let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'
syntax enable
set background=dark
colorscheme solarized
