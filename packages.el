;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;;
;; Dired plus
;;
(package! dired+ :recipe (:host github :repo "emacsmirror/dired-plus"))

;;
;; PHP
;;
(package! php-cs-fixer :pin "c5b5d8a4986b31bade5e2a57131469bf90630db8")
(package! feature-mode)

;;
;; Javascript
;;
(package! vue-mode)

;;
;; Projectile
;;
(package! org-projectile)

;;
;; Git
;;
(package! git-gutter+)

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
