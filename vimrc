" basic setting
set enc=utf8
set termencoding=utf-8
set fileencoding=utf-8
set number
set autoindent
set tabstop=4
syntax on

" bracket complement
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

" set no vi compatible
set nocompatible

" show white spaces
set list
" set listchars=tab:-,trail:-
