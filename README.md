# vimrc
My personnal .vimrc, including plugins and help txt files

Files :

* .vimrc
* doc/

### .vimrc

It contains my personnal .vimrc (**path=~/.vimrc**), including a minimal vim status line (without any plugins)

### doc/

my personnal help files (**path=~/.vim/doc/**), written in french

## Installation

Installation of my `.vimrc` and plugins.

```shell
mkdir -p ~/.vim/bundle
wget -O ~/.vimrc https://raw.githubusercontent.com/JeanS-github/vimrc/main/vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

### Plugins

I havn't upload the plugins I use, but you have to download them on github, via the *Plugins's section* in my .vimrc.

Here the list of plugins I use : 

* Plugin 'jiangmiao/auto-pairs'
* Plugin 'scrooloose/syntastic'
* Plugin 'garbas/vim-snipmate'
* Plugin 'MarcWeber/vim-addon-mw-utils'
* Plugin 'tomtom/tlib_vim'
* Plugin 'loremipsum'

