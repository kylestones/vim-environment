(put 'upcase-region 'disabled nil)



;;------------package-install--------------------------
(setq package-enable-at-startup t)

;;(require 'package)
;;(add-to-list 'package-archives
;;	     '(("gnu" . "http://elpa.gnu.org/packages/")
;;	       ;("marmalade" . "http://marmalade-repo.org/packages/")
;;	       ;("melpa" . "http://melpa.milkbox.net/packages/")
;;               ("melpa" . "https://melpa.org/packages/")
;;               ("melpa-stable" . "https://stable.melpa.org/packages/")))

;(package-initialize)

(require 'package)
;; If you want to use latest version
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)


(add-to-list 'load-path (expand-file-name"~/.emacs.d/lisp"))
(require 'custom-cfg)
(require 'program-cfg)
(require 'calender-cfg)
(require 'org-cfg)
(require 'helm-cfg)
;;------------auto-complete-----------------------------
;;; init.el --- user init file      -*- no-byte-compile: t -*-
;(setq load-prefer-newer t)
;(package-initialize)
(require 'auto-complete-config)

(ac-config-default)


;;(require 'auto-compile)
;;(auto-compile-on-load-mode)
;;(auto-compile-on-save-mode)
(setq load-prefer-newer t)
(package-initialize)
(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

(load-file "~/.emacs.d/elpa/graphviz-dot-mode-20181118.551/graphviz-dot-mode.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/GTD/gusty.org")))
 '(package-selected-packages
   (quote
    (graphviz-dot-mode plantuml-mode html2org fuzzy auto-complete auctex yasnippet org helm cal-china-x auto-compile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;customize theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/moe-theme.el/")
;(add-to-list 'load-path "~/.emacs.d/elpa/moe-theme.el/")
;(require 'moe-theme)
(load-theme 'moe-dark t)
