augroup VIMRC
	autocmd!
augroup END

" defaults.vim
set list listchars=tab:>-,extends:\\u00bb,precedes:\\u00ab,eol:\\u21b5,nbsp:~

augroup VIMRC
	autocmd BufEnter * execute 'setlocal listchars=tab:>-,extends:\\u00bb,precedes:\\u00ab,eol:\\u21b5,nbsp:~,multispace:┆' . repeat('\ ', &sw - 1)
augroup END
set backspace=indent,eol
set number relativenumber

set history=500
set ruler

set showcmd " show currently typed command (as in y)
set wildmenu

" timeout for mapping delay, ttimeout for key code delay
set timeout ttimeout timeoutlen=2000 ttimeoutlen=50

set display=lastline  " defaults.vim sets it to truncate but this seems to make more sense
set scrolloff=2

set shortmess-=S

set hlsearch incsearch

set nrformats-=octal nrformats+=unsigned

set wildmode=longest:list,full

set ignorecase smartcase

set laststatus=2

set splitright splitbelow

nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>
" often misfires
nnoremap <silent> <F1> <Nop>
nnoremap s <Nop>

" I would just yy
nnoremap Y y$

" 'stronger' h and l.
nnoremap <C-h> ^
vnoremap <C-h> ^
nnoremap <C-l> $
vnoremap <C-l> $

" search for the text selected in visual mode at the cost of the l register.
" from : http://memo.officebrook.net/20091022.html
" via http://labs.timedia.co.jp/2014/09/learn-about-vim-in-the-workplace.html
vnoremap * "ly:let @/ = @l<CR>n

" set working directory to the current file
nnoremap ,cd :lcd %:p:h <CR>

" Paste and fix indentation.
" cf: github:gregstallings/vimfiles/vimrc
nnoremap <Leader>p p`[v`]=
nnoremap <Leader>P P`[v`]=

" Paste what is yanked in C-v mode as independent lines.
function! MakeLineWise()
    call setreg(v:register, getreg(),'l')
endfunction
nnoremap <silent> ,p :<C-u>call MakeLineWise()<CR>p
nnoremap <silent> ,P :<C-u>call MakeLineWise()<CR>P


if has('termguicolors')
	set termguicolors
endif

augroup VIMRC
	autocmd ColorScheme * hi ExtraWhiteSpace ctermbg=darkgrey guibg=darkgrey
	autocmd ColorScheme * hi ZenkakuSpace ctermbg=white guibg=white
	autocmd BufEnter * call s:syntax_additional()
augroup END
function! s:syntax_additional()
	let l:matches = [
				\ matchadd("ZenkakuSpace", '　', 0),
				\ matchadd('ExtraWhiteSpace', '\s\+$',0),
				\ ]
	return l:matches
endfunction

