" Default tabbing / spacing settings
set tabstop=4                                       " width 4
set softtabstop=0                                   " what is even this
set expandtab                                       " expand tab
set shiftwidth=4                                    " width 4
set smarttab                                        " use smart tabs
set smartindent                                     " use smart indent

" Misc settings
set number                                          " Show line numbers on startup
set noswapfile                                      " Do not use swapfile
set nobackup                                        " Don't create backup files
set backspace=indent,eol,start                      " Makes backspace key more powerful
set list lcs=tab:\|-                                " show tabs
set mouse=a                                         " select with mouse without line numbers
set clipboard+=unnamedplus                          " fix for clipboard
set cursorline                                      " Show line where cursor is
set wrap!                                           " Disable linewrap
set ignorecase                                      " Ignore lowercase/uppercase
set smartcase                                       " Searching with lowercase to ignore uppercase/lowercase

" Omni
set nocompatible
filetype plugin on
set omnifunc=syntaxcomplete#Complete

highlight cursorline cterm=NONE ctermbg=237 ctermfg=NONE   " Highlight cursorline
highlight ExtraWhitespace ctermbg=darkred guibg=darkred    " show trailing spaces

" Set tilde characters (blank lines) with default color
hi EndOfBuffer ctermfg=grey

" nerdtree
highlight VertSplit cterm=NONE

match ExtraWhitespace /\s\+$/                              " show trailing spaces

set list
set listchars=tab:>\ ,trail:-,nbsp:+

"
" Key bindings
"
" Allow double press of jj to go back to normal mode from insert mode
imap jj <Esc>
" End of line key to §
map § $

"
" Filetypes
" for html/css/js files: 2 spaces, python: 4 spaces
"
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype yml setlocal ts=2 sw=2 expandtab
autocmd filetype yaml setlocal ts=2 sw=2 expandtab
autocmd filetype vue setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype php setlocal ts=4 sw=4 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab

autocmd BufRead,BufNewFile *.blade.php set ts=2 sw=2 expandtab " Set 2 spaces for blade php files
autocmd BufRead,BufNewFile *.jsx set ts=2 sw=2 expandtab " Set 2 spaces for jsx files

" 4 Width Tabs for golang
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }                             " On-demand loading?
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }                                    " On-demand loading

Plug 'vim-airline/vim-airline'                                                      " Lean & mean status/tabline
Plug 'vim-airline/vim-airline-themes'                                               " Lean & mean status/tabline
Plug 'tpope/vim-fugitive'                                                           " Most awesome git extension for vim known to man
Plug 'tommcdo/vim-fubitive'                                                         " Gbrowse for bitbucket
Plug 'christoomey/vim-tmux-navigator'                                               " Allow one combination of keysets to move between tmux panes and vim splits

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                       " Deoplete
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }                    " Deoplete - Tern JS
Plug 'marijnh/tern_for_vim'

Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}                " PHP AutoCompletion
Plug 'kristijanhusak/deoplete-phpactor'                                             " PHP AutoCompletion with deoplete (phpactor for deoplete)
Plug 'jwalton512/vim-blade'                                                         " Laravel Blade Syntax Highlighting

Plug 'neovim/node-host', { 'do': 'npm install' }                                    " Javascript syntax
Plug 'billyvg/tigris.nvim', { 'do': './install.sh' }                                " Javascript syntax
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }         " Javascript syntax
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }                     " Javascript syntax

Plug 'Xuyuanp/nerdtree-git-plugin'                                                  " Git integration for NERDTree
Plug 'ryanoasis/vim-devicons'                                                       " File icons for NERDTree among other things

Plug 'MarcWeber/vim-addon-local-vimrc'                                              " Projectspecific vimrc

Plug 'posva/vim-vue'                                                                " Syntax highlighting for VueJS
Plug 'lumiliet/vim-twig'                                                            " Syntax highlighting for Twig

Plug 'ctrlpvim/ctrlp.vim'                                                           " Project file search
Plug 'dyng/ctrlsf.vim'                                                              " Search inside project files

Plug 'neomake/neomake' " Syntastic replacement
Plug 'jaawerth/neomake-local-eslint-first' " use local eslint project first

Plug 'https://github.com/sqwishy/vim-sqf-syntax.git' " SQF Syntax Highlighting

Plug 'hashivim/vim-terraform' " Terraform plugin for vim
Plug 'juliosueiras/vim-terraform-completion'

" End plugin system
call plug#end()

" Ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] " Hide files in .gitignore
let g:ctrlp_show_hidden = 1
" Ctrl F
nmap     <C-F>f <Plug>CtrlSFPrompt
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath

" Terraform settings
let g:terraform_align=1
let g:terraform_fold_sections=0
let g:terraform_fmt_on_save=1

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

" Configure snippets
let g:UltiSnipsExpandTrigger = "<C-e>"                                        " Expand snippet on trigger tab
let g:UltiSnipsEditSplit="vertical"                                           " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']                   " Set ultisnips directory

" Configure vimtex
let g:tex_flavor='latex'                        " Tex flavour
let g:vimtex_view_method='skim'                 " View method of PDF
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_progname = 'nvr'          " Support with vimtex for NeoVim
" set conceallevel=1                            " Concealment of LaTeX (showing preview) currently turned off
" let g:tex_conceal='abdmg'                     " Concealment of LaTeX (showing preview) currently turned off

" Javascript syntax settings
let g:tigris#enabled = 1
let g:javascript_plugin_flow = 1

" Configure deoplete
let g:deoplete#enable_at_startup = 1                                    " Use deoplete at startup
let g:deoplete#custom#option#ternjs#types = 1                                 " Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#custom#option#ternjs#depths = 1                                " Whether to include the distance (in scopes for variables, in prototypes for
                                                                        " properties) between the completions and the origin position in the result
                                                                        " data. Default: 0
let g:deoplete#custom#option#ternjs#docs = 1                                  " Whether to include documentation strings (if found) in the result data.
                                                                        " Default: 0
let g:deoplete#custom#option#ternjs#filter = 0                                " When on, only completions that match the current word at the given point will
                                                                        " be returned. Turn this off to get all results, so that you can filter on the
                                                                        " client side. Default: 1
let g:deoplete#custom#option#ternjs#case_insensitive = 1                      " Whether to use a case-insensitive compare
                                                                        " between the current word and
                                                                        " potential completions. Default 0
let g:deoplete#custom#option#ternjs#guess = 1                                 " When completing a property and no completions are found, Tern will use some
                                                                        " heuristics to try and return some properties anyway. Set this to 0 to
                                                                        " turn that off. Default: 1
let g:deoplete#custom#option#ternjs#sort = 0                                  " Determines whether the result set will be sorted. Default: 1
let g:deoplete#custom#option#ternjs#expand_word_forward = 0                   " When disabled, only the text before the given position is considered part of
                                                                        " the word. When enabled (the default), the whole variable name that the cursor
                                                                        " is on will be included. Default: 1
let g:deoplete#custom#option#ternjs#omit_object_prototype = 0                 " Whether to ignore the properties of Object.prototype unless they have been
                                                                        " spelled out by at least two characters. Default: 1
let g:deoplete#custom#option#ternjs#include_keywords = 1                      " Whether to include JavaScript keywords when completing something that is not
                                                                        " a property. Default: 0
let g:deoplete#custom#option#ternjs#in_literal = 0                            " If completions should be returned when inside a literal. Default: 1

" Set vim-airline settings
let g:airline_theme='bubblegum'                                         " Bubbelgum airline theme
let g:airline#extensions#tabline#enabled = 1                            " Automatically displays all buffers when there's only one tab open.
let g:airline_powerline_fonts = 1                                       " Discover powerline fonts

let g:deoplete#custom#option#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ ]

let g:deoplete#custom#option = {}
let g:deoplete#custom#option.php = ['omni', 'phpactor', 'ultisnips', 'buffer']

" Set default python packages path so we will not have problems
" when working in a different virtualenv environment
"let g:python_host_prog = '/full/path/to/neovim2/bin/python'
"let g:python3_host_prog = '/full/path/to/neovim3/bin/python'
" let g:python3_host_prog = '/Users/simzor/Library/Python/3.7/lib/python/site-packages/neovim/bin/python'

" Syntastic config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_javascript_eslint_exe = 'npm run lint --'

"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_php_checkers = ['php', 'phpcs']
"let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 1
"let g:syntastic_enable_signs = 1

"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '👔'
"let g:syntastic_style_warning_symbol = '👔'

"let g:syntastic_phpcs_disable = 0

"highlight SyntasticErrorSign ctermbg=NONE ctermbg=NONE
"highlight SyntasticWarningSign ctermbg=NONE ctermbg=NONE
"highlight SyntasticErrorLine ctermbg=NONE ctermbg=NONE

" ------------------------------------------------------------------------------
" Start Neomake Settings

autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_php_enabled_makers = ['php', 'phpcs', 'phpstan']

let g:neomake_php_phpcs_args_standard = 'PSR2'
let g:neomake_phpstan_level = 0

" End Neomake Settings
" ------------------------------------------------------------------------------

" Use tern_for_vim.
let g:tern#command = ["ternjs"]
let g:tern#arguments = ["--persistent"]

" Set the size to the amount of errors
" in Syntastic
" see :h syntastic-loclist-callback
" function! SyntasticCheckHook(errors)
"    if !empty(a:errors)
"        let g:syntastic_loc_list_height = min([len(a:errors), 10])
"    endif
" endfunction

hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

let NERDTreeIgnore = ['\.pyc$', '\.DS_Store', '__pycache__', '__pycache__'] " Don't show these directories and files in NERDTree
let mapleader = ","                                                         " Map leader key to ,
let NERDTreeAutoDeleteBuffer = 1                                            " Automatically delete buffer of deleted file in NERDTree
let NERDTreeMinimalUI = 1                                                   " Make NERDTree nicer
let NERDTreeDirArrows = 1                                                   " Make NERDTree nicer
let g:NERDTreeWinSize=45                                                    " Set default NERDTree window width

" Open nerdtree with , +f
nnoremap <Leader>f :NERDTreeToggle<Enter>

" Fix not being able to jump out of neovim in nerdtree
let g:NERDTreeMapJumpNextSibling = '<Nop>'
let g:NERDTreeMapJumpPrevSibling = '<Nop>'

" -------------------------------------- Deoplete Terraform ---
" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1
" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 1
" --
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1
call deoplete#initialize()
" -------------------------------------- Deoplete Terraform ---
