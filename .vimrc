" Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YCM Python3 support
let g:ycm_python_binary_path='python'

" Settings
set encoding=utf-8
set fileencodings=utf-8,big5,gbk,latin1
set t_Co=256											" set 256 colors
syntax on												" set
color molokai
set cursorline
set number
set ruler
set ignorecase
set hlsearch
set incsearch
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set backspace=start,indent,eol
set showcmd
set showmode
set wrap
set mouse=
hi Search cterm=underline ctermbg=none ctermfg=Magenta

" Status
if has("statusline")
	set laststatus=2
	set statusline=
	set statusline+=%1*\ %{GetCurrentMode()}\ 
	set statusline+=%2*\ %F
	set statusline+=%9*\ %=
	set statusline+=%8*\ 0x%B\ 
	set statusline+=%7*\ %l
	set statusline+=%7*\,%c\ 
	hi User1 cterm=bold ctermbg=66 cterm=none
	hi User2 ctermbg=none ctermfg=Green
	hi User8 cterm=bold ctermbg=89 ctermfg=none
	hi User7 cterm=bold ctermbg=88 ctermfg=none
endif

" Functions
function! GetCurrentMode()
	if (mode()=~"n")
		return "Normal"
	elseif (mode()=~"no")
		return "N-Operator-Pending"
	elseif (mode()=~"v")
		return "Visual"
	elseif (mode()=~"V")
		return "V-Line"
	elseif (mode()=~"")
		return "V-Block"
	elseif (mode()=~"s")
		return "Select"
	elseif (mode()=~"S")
		return "S-Line"
	elseif (mode()=~"")
		return "S-Block"
	elseif (mode()=~"i")
		return "Insert"
	elseif (mode()=~"R")
		return "Replace"
	elseif (mode()=~"Rv")	
		return "V-Replace"
	elseif (mode()=~"c")	
		return "Command"
	elseif (mode()=~"cv")	
		return "Vim-Ex"
	elseif (mode()=~"ce")	
		return "Ex"
	elseif (mode()=~"r")	
		return "Prompt"
	elseif (mode()=~"rm")	
		return "More"
	elseif (mode()=~"r?")	
		return "Confirm"
	elseif (mode()=~"!")	
		return "Shell"
	endif
	return mode()
endfunction

" Map
imap jh <Esc>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
