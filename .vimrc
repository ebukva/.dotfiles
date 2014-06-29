" Allow running vim-pathogen itself as a Pathogen bundle
  runtime bundle/vim-pathogen/autoload/pathogen.vim

" Use Pathogen to manage VIM plugins
" Put any plugins in a subdirectory under ~/.vim/bundles/ and they’ll
" be added to the runtimepath. https://github.com/tpope/vim-pathogen
  execute pathogen#infect()

" Use Solarized color theme
" Must use this in iTerm2 app and have Solarized iTerm2 color scheme
" installed. Default Terminal app doesn’t support enough colors.
" http://ethanschoonover.com/solarized
  syntax enable
  set background=dark
  colorscheme solarized

" Show line numbers
" Shortcut is 'set nu'. 'set nonumber' hides line numbers.
  set number

" Set default tab stops
" 'set noexpandtab' disables conversion of tabs to spaces.
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab

" Match TextMate’s invisible characters
" Invisibles have to be turned on separately with 'set list' command.
" 'set nolist' turns off invisibles.
  set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Set default font and font size
" Applies to GUI editors only e.g. MacVIM.
  set guifont=Fira\ Mono\ OT:h12 

" Turn on syntax highlighting
" syntax on

" Enable file type detection
" First make sure Vim has been compiled with support for autocommands
" which file type detection depends on.
  if has("autocmd")
    filetype on
  endif

" Use case insensitive search except when using capital letters
  set ignorecase
  set smartcase

" Keep the same indent as the line I’m currently on when opening a
" new line and no filetype-specific indenting is enabled
" Useful for READMEs, etc.
  set autoindent

" Stop certain movements from always going to the first character of a
" line. While this behaviour deviates from that of Vi, it does what
" most users coming from other editors would expect.
  set nostartofline

" Display the cursor position
" On the last line of the screen or in the status line of a window.
  set ruler

" Search as I type (incrementally)
  set incsearch

" Highliht current line
  set cursorline

" Show this many lines above and below cursor when scrolling
  set scrolloff=1

" Allow entering commands with a semi colon in addition to colon
  nnoremap ; :

" Remove trailing white space on save for HTML and CSS files
  func! RemoveTrailingWhiteSpace()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
  endfunc
  autocmd BufWrite *.html :call RemoveTrailingWhiteSpace()
  autocmd BufWrite *.css  :call RemoveTrailingWhiteSpace()

