#!/bin/bash

# cloning repository
git clone --recursive https://github.com/mtbehisseste/.vim.git

# -----YouCompleteMe-----
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe

# This installs python lint only but auto complete for other languages also works 
python3 install.py  
# If semantic support for C-family languages is needed, run this:
# python3 install.py --clang-completer

# Check https://github.com/ycm-core/YouCompleteMe for more 
# -----YouCompleteMe-----

vim +PluginInstall +qall
