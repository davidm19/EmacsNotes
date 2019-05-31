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
;;	   officially pushed on April 18th, 2019;
;;	   Recently reworked and updated May 27th,
;;	   2019
;;
;; Put this file in your home directory and rename 
;; it to .emacs, then download the listed 
;; packages.  Then uninstall Emacs, grow some  
;; common sense and use Vim, you animal.
;; -----------------------------------------------                                   


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (doom-one)))
 '(custom-safe-themes
   (quote
    ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "59171e7f5270c0f8c28721bb96ae56d35f38a0d86da35eab4001aebbd99271a8" "84890723510d225c45aaff941a7e201606a48b973f0121cb9bcb0b9399be8cba" default)))
 '(package-archives
   (quote
    (("melpa" . "https://stable.melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/"))))
 '(package-selected-packages (quote (doom-themes powerline evil key-chord))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Display Line Numbers
(when (version<="26.0.50" emacs-version)
  (global-display-line-numbers-mode))

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
(global-set-key (kbd "C-M-f") 'helm-find-files)

;; no toolbar and menubar
(toggle-menu-bar-mode-from-frame 0)
(tool-bar-mode 0)

;; Change emacs font (THIS IS ANOTHER DEPENDENCY!)
(set-face-attribute 'default nil :font "Iosevka Nerd Font-16" )
(set-frame-font "Iosevka Nerd Font-16" nil t)

;; -------------------------------------------
;; PACKAGE LIST
;; -------------------------------------------
;; - Evil Mode + Keychord
;; - Doom-themes
;; - Powerline
;; - Auto-complete
;; - OPTIONAL
;; 	- Helm Fuzzy-file finding (bound to C-M-f)
;;	- A gitgutter
;;	- Flycheck

;; Evil Mode and key-chord settings
(evil-mode 1)
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state) ;; ergonomic exit
(define-key evil-normal-state-map "gc" 'comment-line) ;; vim-commentary style commenting
(define-key evil-normal-state-map ";h" 'split-window-below) ;; easy window splitting
(define-key evil-normal-state-map ";v" 'split-window-right) ;; easy window splitting

;; Powerline settings
(require 'powerline)
(powerline-vim-theme)

;; Auto-complete settings
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; HEY
;; IF YOU WANT TO SET A COMPILER COMMAND (https://www.gnu.org/software/emacs/manual/html_node/emacs/Compilation.html), USE A LOCAL VARIABLE (https://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-File-Variables.html#Specifying-File-Variables)
