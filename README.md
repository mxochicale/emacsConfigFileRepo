# emacs_config_file Repository

.emacs file contains some tools that I need while using emacs

Miguel Perez-Xochicale 

TODO
=====

CHANGES
=======

# Mon Oct 12 09:19:51 BST 2015
rename emacs_dependencies.sh to .emacs_dependencies.sh
edit README to make it more readable


Tue Sep 29 12:37:23 BST 2015
Tue 23 Jun 2015 11:53:36 BST 

##How to update from desktop

```
$cd ~/mxochicale/github/emacs_config_file
$cp /home/map479/.emacs .
$ git add .
$ git status
$ git commit -m "updating emacs config file"
$ git push origin master
```



## How to use it


```
git clone https://github.com/mxochicale/emacs_config_file.git
cd
cp ~/mxochicale/github/emacs_config_file/.emacs .
cp ~/mxochicale/github/emacs_config_file/.emacs_dependencies.sh .
./.emacs_dependencies.sh 

```


## How to install otf font on Ubuntu 14.01.03 [ref1]

```
chmod 644 Inconsolata.otf 
sudo cp /home/map479-admin/.emacs.d/Inconsolata.otf .
```

## References

[REF1] http://xmodulo.com/how-to-install-custom-fonts-in-linux-desktop.html "ref1"



enjoy :)
