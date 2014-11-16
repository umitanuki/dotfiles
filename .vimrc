set ts=4
set sw=4
set nu
set ruler
"set mouse=a
set cb=unnamed
set list
set listchars=tab:>-,trail:-
"set cindent
set hlsearch
"let macvim_skip_colorscheme=1
highlight SpecialKey ctermfg=lightgray guifg=#595959
highlight DiffAdd guibg=#ffeeee guifg=white gui=none
highlight DiffChange guibg=#eeffee guifg=white gui=none
highlight DiffDelete guibg=#eeeeff guifg=white gui=none
syntax enable

autocmd Filetype c          :set cindent noexpandtab                 "C/C++"   <CR>
autocmd Filetype h          :set cindent noexpandtab                 "C/C++"   <CR>
autocmd Filetype cpp        :set cindent noexpandtab                 "C/C++"   <CR>
autocmd Filetype python     :set autoindent expandtab                "Python"  <CR>
autocmd Filetype config     :set expandtab                           "config"  <CR>
autocmd Filetype go         :filetype indent on                      "GO"      <CR>

filetype indent on

set runtimepath+=$GOROOT/misc/vim

filetype plugin on
set omnifunc=syntaxcomplete#Complete

