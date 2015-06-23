;; Last modification
;; 22th June 2015
;; Miguel P. Xochicale
;; 

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
;; cd ~/.emacs.d
;; wget http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz
;; tar -zxvf color-theme-6.6.0.tar.gz 
;; cd color-theme-6.6.0/themes
;; wget https://raw.githubusercontent.com/juba/color-theme-tangotango/master/color-theme-tangotango.el



;; edit load-path values
(add-to-list 'load-path "/home/map479/.emacs.d/color-theme-6.6.0")
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
(width        . 100)
(height            . 40)
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

;;(global-set-key (kbd "C-c c") 'comment-region)   ;; make C-c C-c and C-c C-u work
;;(global-set-key (kbd "C-c u") 'uncomment-region) ;; for comment/uncomment region in all modes
;;(global-set-key (kbd "M-&lt;up&gt;") 'move-line-up)
;;(global-set-key (kbd "M-&lt;down&gt;") 'move-l




;; ===============
;; FONT
;; ===============
;;;;;;;;;;;;;;
;; http://stackoverflow.com/questions/3958343/how-can-i-set-a-default-font-inconsolata-in-my-emacs-el-in-ubuntu

;; sudo apt-get install ttf-inconsolata
;; Then put in your ~/.emacs file something like
;; (set-default-font "Inconsolata-12")
;;(set-default-font "Inconsolata-15")




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
;; Put http://www.emacswiki.org/emacs/download/multi-term.el
;; in your load-path, then add
;; (require 'multi-term) in ~/.emacs.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (custom-set-variables
;;     '(term-default-bg-color "#000000")        ;; background color (black)
;;      '(term-default-fg-color "#dddd00"))       ;; foreground color (yellow)
;;  (add-to-list 'load-path "~/.emacs.d/")
;;  (require 'multi-term)
;;  (setq multi-term-program "/bin/bash")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;                DEFAULT DIRECTORY
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(setq default-directory "/home/mapx/" )

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
;;(split-window-vertically -4)
;;(other-window 1)
;;(multi-term)
;;(other-window 1)
;;(dired "/home/mapx/b612")



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
