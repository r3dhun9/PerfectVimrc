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
	set statusline+=%2*\ %F\ 
	hi User1 cterm=bold ctermbg=DarkBlue cterm=none
	hi User2 ctermbg=none ctermfg=Green
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
