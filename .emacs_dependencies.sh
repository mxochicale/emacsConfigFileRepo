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

#to open files e.g. pdf files with evince
wget https://raw.githubusercontent.com/emacsmirror/openwith/master/openwith.el

wget http://www.emacswiki.org/emacs/download/multi-term.el

wget http://www.levien.com/type/myfonts/Inconsolata.otf



## color theme (donwload, untar and deleted)
wget http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz
tar -zxvf color-theme-6.6.0.tar.gz 
rm color-theme-6.6.0.tar.gz

cd color-theme-6.6.0/themes

#to use as  color theme in emacs
wget https://raw.githubusercontent.com/juba/color-theme-tangotango/master/color-theme-tangotango.el






