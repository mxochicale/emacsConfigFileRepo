emacs_config_file Repository
=======

.emacs file contains some tools that I need while using emacs
Miguel Perez-Xochicale 

# TODO

* Sun Dec 6 18:14:32 GMT 2015
create a main path variable so as to use in different computers


# CHANGES
* Sun Dec 6 18:08:20 GMT 2015
modification to use emacs file on a rasberry pi board
Use of  ~/ as the main path

* Mon Oct 12 09:19:51 BST 2015
rename emacs_dependencies.sh to .emacs_dependencies.sh
edit README to make it more readable


* Tue Sep 29 12:37:23 BST 2015
* Tue 23 Jun 2015 11:53:36 BST 

##How to update from desktop

```
$ cd ~/mxochicale/github/emacs_config_file
$ cp /home/map479-admin/.emacs .
$ cp /home/map479-admin/.emacs_dependencies.sh .
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


## Use in a raspberry pi board

** todo
   -- modify the main user directory to make a standard main path

```
$ git clone https://github.com/mxochicale/emacs_config_file.git
$ cd emacs_config_file/
$ pwd --->  /home/pi/robit_machine/emacs_config_file/
$cd
$cp /home/pi/robit_machine/emacs_config_file/.emacs_dependencies.sh .
$./.emacs_dependencies.sh 
$cp /home/pi/robit_machine/emacs_config_file/.emacs .

```

enjoy :-)


