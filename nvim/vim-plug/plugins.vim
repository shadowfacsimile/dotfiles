if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Light line"
    Plug 'itchyny/lightline.vim' 
    " Vim wiki"
    Plug 'vimwiki/vimwiki'
    " Python highlighting"
    Plug 'vim-python/python-syntax'
    " CSS color"
    Plug 'ap/vim-css-color'
    " Nord theme"
    " Plug 'arcticicestudio/nord-vim'
    " Airline
    " Plug 'vim-airline/vim-airline'
    " Airline themes
    " Plug 'vim-airline/vim-airline-themes'
call plug#end()
