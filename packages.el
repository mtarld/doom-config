;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;
;; Dired
;;
(package! dired+ :recipe (:host github :repo "emacsmirror/dired-plus"))
(package! dired-subtree)

;;
;; PHP
;;
(package! php-cs-fixer :pin "c5b5d8a4986b31bade5e2a57131469bf90630db8")
;;
;;
;; Javascript
;;
(package! vue-mode)

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
;; Deadgrep
;;
;; (package! deadgrep)
(package! deadgrep :recipe (:host github :repo "mtarld/deadgrep" :branch "feature/skip-ignored"))

;;
;; Snippets
;;
(package! emacs-snippets :disable t)

;;
;; REST
;;
(package! restclient)
