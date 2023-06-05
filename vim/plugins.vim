set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'

" LSP
Plugin 'neovim/nvim-lspconfig'
Plugin 'williamboman/mason.nvim'
Plugin 'williamboman/mason-lspconfig.nvim'

" Plugin 'Exafunction/codeium.vim'
Plugin 'github/copilot.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Yggdroot/indentLine'

" Appearance
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/wombat256.vim'
Plugin 'bling/vim-airline'

" Autocomplete
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'tpope/vim-repeat.git'

" Snippets
Plugin 'sirver/UltiSnips'
Plugin 'honza/vim-snippets'
Plugin 'epilande/vim-es2015-snippets'

" Edition plugins
Plugin 'mg979/vim-visual-multi'

" Syntatic and Linter
" Plugin 'w0rp/ale'
Plugin 'dense-analysis/ale'
Plugin 'joom/vim-commentary'
Plugin 'tpope/vim-surround'

" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'ruanyl/vim-gh-line' " Open github with line you are in vim

" Navigation open file directs on line by `:e ./spec/test_spec.rb:16`
Plugin 'kopischke/vim-fetch'
Plugin 'tpope/vim-projectionist' "Jump between related files

" Search plugins
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'

" Languages
" Ruby
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-endwise'

" Rust
Plugin 'rust-lang/rust.vim'

" Golang
Plugin 'fatih/vim-go'

Plugin 'cristianoliveira/snipgpt.nvim', { 'do': 'npm i snipgpt -g' }

call vundle#end()
