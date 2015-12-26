emacs configuration files
=======

Repository for 
```
.emacs		
.emacs_dependencies.sh
```


## TODO LIST and CHANGE LOGS

The TODO list and change logs are attached at the beginning of each file


# GitHub Update

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

update from the pi
```
pi@raspberrypi:~/mxochicale/github/emacs_config_file $ cp /home/pi/.emacs .
pi@raspberrypi:~/mxochicale/github/emacs_config_file $ cp /home/pi/.emacs_dependencies.sh .
$ git add .
$ git status
$ git commit -m "updating emacs config file"
$ git push origin master
```

from github to pi
```
$ cd ~/mxochicale/github 
$ git clone https://github.com/mxochicale/emacs_config_file.git
$ cd emacs_config_file/
$ cd
$ cp ~/mxochicale/github/emacs_config_file/.emacs_dependencies.sh .
$ ./.emacs_dependencies.sh
$ cp ~/mxochicale/github/emacs_config_file/.emacs .
```

## time to enjoy :-)