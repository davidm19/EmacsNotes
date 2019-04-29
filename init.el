;; ===============================================
;; =                                             =
;; =    ______ __  __          _____  _____      =
;; =   |  ____|  \/  |   /\   / ____|/ ____|     =
;; =   | |__  | \  / |  /  \ | |    | (___       =
;; =   |  __| | |\/| | / /\ \| |     \___ \      =
;; =   | |____| |  | |/ ____ \ |____ ____) |     =
;; =   |______|_|  |_/_/    \_\_____|_____/      =
;; =                                             =
;; ===============================================

;; -----------------------------------------------
;; Author: davidm19
;; Date:   Hastily hacked together sometime in
;;	   November-December 2018; Pruned and 
;;	   officially pushed on April 18th, 2019
;;
;; Put this file in your home directory and rename 
;; it to .emacs. Then change and save the theme, 
;; link to MELPA and download the listed packages. 
;; Then uninstall Emacs, grow some common sense 
;; and use Vim, you animal.
;; -----------------------------------------------                                   

;; MELPA link: https://stable.melpa.org/packages/
;; How to add: M-x customize-group --> packages --> add new group

;; fav theme: manoj dark

;; --------------------------------------------
;; HERE'S WHERE THE ACTUAL CONFIGURATION STARTS
;; --------------------------------------------

;; Display Line numbers

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (version<="26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;; Set font size to 17
;; (set-face-attribute 'default nil :height 170)

;; 4 spaces to 1 tab (THIS WILL ALL DEPEND ON THE CODING STANDARDS OF THE LANGUAGE YOU'RE WORKING WITH)
; (setq-default indent-tabs-mode nil)
; (setq-default tab-width 4)
; (setq indent-line-function 'insert-tab)

;; Auto complete parentheses pairs
(electric-pair-mode 1)

;; no backup~ files
(setq make-backup-files nil)

;; no #autosave# files
(setq auto-save-default nil)

;; no start up message
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; removes *messages* from the buffer
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Removes *Completions* from buffer
(add-hook 'minibuffer-exit-hook
	  '(lambda ()
	     (let ((buffer "*Completions*"))
	       (and (get-buffer buffer)
		        (kill-buffer buffer)))))

;; jump to other frame (split screen)
(global-set-key [C-tab] 'other-window)

;; more keybindings
(global-set-key (kbd "C-x p") 'vc-push)
(global-set-key (kbd "C-x P") 'vc-update)

(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-f") 'helm-find-files)

;; no toolbar and menubar
(toggle-menu-bar-mode-from-frame 0)
(tool-bar-mode 0)

;; start fullscreen (you can disable if running this on macos)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

;; -------------------------------------------
;; PACKAGE LIST
;; -------------------------------------------
;; - MAGIT
;; - AUTO-COMPLETE
;; - HELM
;; - FLYCHECK
;; - ZEN-MODE (read here: https://github.com/aki237/zen-mode and then here: https://www.emacswiki.org/emacs/LoadPath (YES, USE A SEPARATE SUBDIRECTORY!) to install)
;; - OPTIONAL:
;;           - EVIL MODE AND KEYCHORD
;;           - LANGUAGE-SPECIFIC PLUGINS 
;;             (USUALLY CALLED <LANGUAGE>-MODE; 
;;             i.e. haskell-mode, python-mode, etc)

;; -------------------------------------------
;; UNCOMMENT THESE SETTINGS WHEN ALL PACKAGES 
;; ARE INSTALLED!!!
;; -------------------------------------------

; ;; AUTOCOMPLETE MAGIC
; (require 'auto-complete)
; (require 'auto-complete-config)
; (ac-config-default)

; ;; turn on git-gutter
; (global-git-gutter+-mode)

; ;; Enable FlyCheck
; (global-flycheck-mode)

; ;; Enable Evil Mode and map jj to escape
; (evil-mode 1)

; ;; Key Chord settings
; (require 'key-chord)
; (key-chord-mode 1)
; (key-chord-define evil-insert-state-map "jj" 'evil-normal-state)

;; -------------------------------------------
;; THANKS FOR WATCHING!
;; -------------------------------------------
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
