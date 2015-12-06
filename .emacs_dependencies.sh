#!/bin/bash
# Miguel Perez-Xochicale 
# Fri Oct 2 14:30:59 BST 2015

## TODO
# Sun Dec 6 18:11:54 GMT 2015
# create directories for *.el and fonts


#CHANGES
# Sun Dec 6 17:54 GMT 2015
# add the font section for installation


clear

echo
echo
echo "Hi, $USER!"
echo "This a little shell script to downloand and "
echo "untar some applications for emacs"
echo
echo


# how to run
# chmod +x .emacs_dependencies.sh
# ./.emacs_dependencies.sh


rm -rf .emacs.d/
mkdir .emacs.d
cd ~/.emacs.d

#to open files e.g. pdf files with evince
wget https://raw.githubusercontent.com/emacsmirror/openwith/master/openwith.el

wget http://www.emacswiki.org/emacs/download/multi-term.el




## color theme (donwload, untar and deleted)
wget http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz
tar -zxvf color-theme-6.6.0.tar.gz 
rm color-theme-6.6.0.tar.gz

cd color-theme-6.6.0/themes

#to use as  color theme in emacs
wget https://raw.githubusercontent.com/juba/color-theme-tangotango/master/color-theme-tangotango.el




#inconsolata font

## How to install otf font on Ubuntu 14.01.03 [ref1]
## References
## [REF1] http://xmodulo.com/how-to-install-custom-fonts-in-linux-desktop.html "ref1"

cd ~/.emacs.d
wget http://www.levien.com/type/myfonts/Inconsolata.otf
chmod 644 Inconsolata.otf 

sudo mkdir /usr/share/fonts/opentype
sudo cp ~/.emacs.d/Inconsolata.otf /usr/share/fonts/opentype
