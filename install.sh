#!/bin/bash

# -----YouCompleteMe-----
sudo apt install build-essential cmake python3-dev
# This installs python lint only but auto complete for other languages also works 
# If semantic support for C-family languages is needed, run this:
# cd ~/.vim/bundle/YouCompleteMe && python3 install.py --clang-completer
cd ~/.vim/bundle/YouCompleteMe && python3 install.py  

# Check https://github.com/ycm-core/YouCompleteMe for more 
# -----YouCompleteMe-----

vim +PluginInstall +qall
