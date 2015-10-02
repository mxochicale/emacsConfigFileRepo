;; M. Perez-Xochicale
;; #dot emacs file

;; Update emacs file on github
;; $ cd ~/mxochicale/github/emacs_config_file
;; $ cp /home/map479/.emacs .
;; $ cp /home/map479/emacs_dependencies.sh .
;; $ git add .
;; $ git status 
;; $ git commit -m "updating emacs config file"
;; $ git push origin master


;;TODO: add markdown mode to highlight sections on README's .md files


;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Change log: 
;;
;;
;; 30th of September 2015 
;; comment C-c c
;; uncomment C-c u
;; insert todays timestamp was binded C-x M-d
;;
;;
;; 29th of September 2015
;; add multi-term app 
;; backups directory
;;
;;
;; Last modification
;; 22th June 2015
;; Miguel P. Xochicale


 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ` ~/.emacs '
;;; ---------------------
;;;
;;; If you need your own personal ~/.emacs
;;; please make a copy of this file
;;; an placein your changes and/or extension.
;;;




(setq initial-scratch-message
";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; scratch buffer created -- HAPPY HACKING 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; some handy packages
;; hl-line: highlight the current line
(when (fboundp 'global-hl-line-mode)
  (global-hl-line-mode t)) ;; turn it on for all modes by default
;; Reference
;; http://www.djcbsoftware.nl/dot-emacs.html



;; =======================================================
;; HOWTO Disable that annoying Emacs Splashscreen
;; =======================================================
(setq inhibit-startup-message t)
;; REF http://frankschmitt.org/2007/12/howto-disable-the-annoying-new-emacs-splash-screen

;; ===============
;; Hide Emacs bars forever
;; ======================
;;
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)






;; ===============
;; COLOR THEME
;; ===============
;;;;;;;;;;;;;;
;;
;; INSTALLATION
;;
;; cd ~/.emacs.d
;; wget http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz
;; tar -zxvf color-theme-6.6.0.tar.gz 
;; cd color-theme-6.6.0/themes
;; wget https://raw.githubusercontent.com/juba/color-theme-tangotango/master/color-theme-tangotango.el



;; edit load-path values
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-tangotango)))


;; ============
;; Window colors
;; =============
;;
(setq default-frame-alist
  (append'(    
(width        . 105)
(height            . 50)
(background-color  . "black")
(foreground-color  . "white")
(mouse-color       . "blue")
(cursor-color      . "red")
;;    (face-color        . "black")
;;    (face-backgound-color        . "#FFFFEEEECCCC")
)
    default-frame-alist)
)





;; ============
;; Q: How do I change the colors of my text ?
;; ============
(set-face-foreground 'font-lock-comment-face "green1" )




;; ===============
;; Insert Todays Date
;; ===============
;;;;;;;;;;;;;;
;;http://emacswiki.org/emacs/InsertingTodaysDate

(defun insert-current-date () (interactive)
;;	(insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))
	(insert "# Miguel Perez-Xochicale \n# ")
	(insert (shell-command-to-string "echo -n $(date)")) 
	(insert "\n")
)


;; You can run this command with 'M-x insert-current-date' or bind this command to 'C-x M-d'
(global-set-key "\C-x\M-d" `insert-current-date)





;; ===============
;; Display date and time
;; ===============
;;;;;;;;;;;;;;

(setq display-time-day-and-date t
      display-time-24hr-format t)
;;(setq display-time-format "%I:%M:%S")
(display-time)






;; ===============
;; Show column-number in the mode line
;; ===============
;;;;;;;;;;;;;;
(column-number-mode 1)







;; ============
;; Keyboard
;; ============
;;
;;(global-set-key [C-tab]     'yic-next-buffer)
;;(global-set-key [(shift tab)]  'yic-prev-buffer)
;;(global-set-key [home] 'beginning-of-line)
;;(global-set-key [end] 'end-of-line)
;;(global-set-key [C-home] 'beginning-of-buffer)
;;(global-set-key [C-end] 'end-of-buffer)
;;(global-set-key [f7] 'next-error)
;;(global-set-key [C-a] 'mark-whole-buffer)
;;(global-set-key "C-z" 'undo)
;;(global-set-key "C-v" 'yank)

(global-set-key (kbd "C-c c") 'comment-region)   ;; make C-c C-c and C-c C-u work
(global-set-key (kbd "C-c u") 'uncomment-region) ;; for comment/uncomment region in all modes
;;(global-set-key (kbd "M-&lt;up&gt;") 'move-line-up)
;;(global-set-key (kbd "M-&lt;down&gt;") 'move-l




;; ===============
;; FONT
;; ===============
;;;;;;;;;;;;;;

;; download inconsolata font and install it
;; wget http://www.levien.com/type/myfonts/Inconsolata.otf
;; reference
;; http://www.levien.com/type/myfonts/inconsolata.html

;; or

;; sudo apt-get install ttf-inconsolata
;; Then put in your ~/.emacs file something like
;; http://stackoverflow.com/questions/3958343/how-can-i-set-a-default-font-inconsolata-in-my-emacs-el-in-ubuntu


;;(set-default-font "Inconsolata-12")
(set-default-font "Inconsolata-15")




;; ============
;; Highlight matching parenthesis
;; ============
(show-paren-mode 1)







;; =============
;; Programing, scripts
;; =============
;;
;;(autoload 'octave-mode "octave-mod" nil t)
;;(setq auto-mode-alist
;;      (cons '("\\.m$" . octave-mode) auto-mode-alist))




;; ============
;; Multi-Term configuration
;; =============

;;;; Install and Load multi-term.el:
;;
;; $ cd .emacs.d/
;; $ wget http://www.emacswiki.org/emacs/download/multi-term.el
;; 
;; Put http://www.emacswiki.org/emacs/download/multi-term.el  in your load-path, then add
;; (require 'multi-term) in ~/.emacs

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/")
(require 'multi-term)
(setq multi-term-program "/bin/bash")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;                DEFAULT DIRECTORY
(setq default-directory "~/mxochicale/phd" )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                 ;;
;;             window layout related               ;;
;;                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;|---------|
;|         |
;|         |
;|---------|
;|         |
;|---------|
(split-window-vertically -4)
(other-window 1)
(multi-term)
(other-window 1)
(dired "~/mxochicale/phd")

;; to learn dired, use the following cheat sheets
;; https://github.com/jasonm23/emacs-cheat-sheets



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                 ;;
;;             swith between windows/buffers               ;;
;;                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; I tried to  use ace-windows, but there is a minnor setback 
; Sysmbol's funciton definition is void: ace-window.
; C-x o makes the work of switching the windows successfully
; Wed Sep 30 10:55:47 BST 2015

;$ cd .emacs.d/
;$ wget https://github.com/abo-abo/ace-window/blob/master/ace-window.el
;http://emacs.stackexchange.com/questions/3458/how-to-switch-between-windows-quickly
;(global-set-key (kbd "C-x o") 'ace-window)
;(global-set-key (kbd "M-p") 'ace-window)




;; ==================
;; Make Emacs stop asking “Active processes exist; kill them and exit anyway”
;; http://stackoverflow.com/questions/2706527/make-emacs-stop-asking-active-processes-exist-kill-them-and-exit-anyway
;; ===================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 (defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
   "Prevent annoying \"Active processes exist\" query when you quit Emacs."
   (flet ((process-list ())) ad-do-it))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	   


;; ==================
;; openfiles with evince
;; ==================

;;(add-to-list 'load-path "~/openwith.el")
;;(require 'openwith)
;;(setq openwith-associations '(("\\.pdf\\'" "evince" (file))))
;;(openwith-mode t)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; create a directory where all the backups files are stored
;;http://superuser.com/questions/84164/how-do-i-stop-emacs-from-creating-backup-files
(setq backup-directory-alist '((".*" . "~/mxochicale/.backups")))





;; ==================
;; automatically checking your spelling
;;==================
;; http://emacs-fu.blogspot.co.uk/2009/12/automatically-checking-your-spelling.html


(setq ispell-program-name "aspell"
  ispell-extra-args '("--sug-mode=ultra"))


;; M-x flyspell-mode enables Flyspell mode, which highlights all misspelled words.

;; to activate flyspell-mode on org-mode buffers
(add-hook 'org-mode-hook
  (lambda()
    (flyspell-mode 1)))



;; http://orgmode.org/worg/org-tutorials/org4beginners.html
;; MY PROJECT -*- mode: org -*-
;; This will enable org-mode for this document, no matter what the file-ending is. 



		


