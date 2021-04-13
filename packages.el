;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)

;;
;; Dired plus
;;
(package! dired+ :recipe (:host github :repo "emacsmirror/dired-plus"))

;;
;; PHP
;;
(package! ac-php)
(package! company-php)
(package! geben)
(package! company-phpactor)
(package! php-refactor-mode :disable t)
(package! cl-lib)
(package! phpstan)

;;
;; Behat
;;
(package! feature-mode)

;;
;; Projectile
;;
(package! org-projectile)

;;
;; Git
;;
(package! git-gutter+)

;;
;; Agenda
;;
(package! org-super-agenda)

;;
;; Ripgrep
;;
(package! deadgrep)

;;
;; Snippets
;;
(package! emacs-snippets :disable t)

;;
;; REST
;;
(package! restclient)

;;
;; Markdown
;;
(package! vmd-mode)
