set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'ervandew/supertab'
Plugin 'gcmt/wildfire.vim'
Plugin 'Yggdroot/indentLine'

" Appearance
Plugin 'altercation/vim-colors-solarized'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-scripts/wombat256.vim'
Plugin 'bling/vim-airline'

" Autocomplete
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'tpope/vim-repeat.git'
Plugin 'jiangmiao/auto-pairs'

" Snippets
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'cristianoliveira/vim-react-html-snippets'

" Ctags integration
" Plugin 'craigemery/vim-autotag'

" Edition plugins
Plugin 'kristijanhusak/vim-multiple-cursors'

" Syntatic and Linter
Plugin 'w0rp/ale' " Plugin 'vim-syntastic/syntastic'
Plugin 'joom/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'valloric/MatchTagAlways'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Navigation open file directs on line by `:e ./spec/test_spec.rb:16`
Plugin 'kopischke/vim-fetch'
Plugin 'juanibiapina/vim-lighttree' " Plugin 'scrooloose/nerdtree'

" Search plugins
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" Documentation
Plugin 'rizzatti/dash.vim'

" Languages
" Ruby
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-endwise'

" Rust
Plugin 'rust-lang/rust.vim'

" Golang
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on
