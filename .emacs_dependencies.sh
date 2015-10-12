#!/bin/bash
# Miguel Perez-Xochicale 
# Fri Oct 2 14:30:59 BST 2015


clear

echo
echo
echo "Hi, $USER!"
echo "This a little shell script to downloand and untar some applications for emacs"
echo


# how to run
# chmod +x .emacs_dependencies.sh
# ./.emacs_dependencies.sh


mkdir .emacs.d
cd ~/.emacs.d
wget http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz
wget http://www.emacswiki.org/emacs/download/multi-term.el
tar -zxvf color-theme-6.6.0.tar.gz 
rm color-theme-6.6.0.tar.gz
wget http://www.levien.com/type/myfonts/Inconsolata.otf
cd color-theme-6.6.0/themes
wget https://raw.githubusercontent.com/juba/color-theme-tangotango/master/color-theme-tangotango.el





