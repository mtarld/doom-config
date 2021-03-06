;;; $DOOMDIR/modules/ide/config.el -*- lexical-binding: t; -*-

;;
;; Dired
;;

;; When 2 dired window opened, targets to other window on move/copy
(setq dired-dwim-target t)

;; Dired list display
(setq dired-switches-alist "-lAh")
(setq diredp-hide-details-initially-flag nil)

;; Reuse dired buffers
(put 'dired-find-alternate-file 'disabled nil)
(diredp-toggle-find-file-reuse-dir 1)

;;
;; Ivy
;;
(after! ivy
  (set-popup-rule! "\\*ivy-occur" :side 'right :size 0.5 :select t :ttl nil :quit nil))

;;
;; Git
;;
(use-package! git-gutter+
  :config
  ;; Remove git gutter+ left signs
  (defun git-gutter+-before-string (sign) "")
  (defun git-gutter+-sign-width (sign) 0)
  (global-git-gutter+-mode))

(after! magit
  (set-popup-rule! "magit:" :side 'right :size 0.5 :select t :ttl nil :quit nil)
  (set-popup-rule! "magit-process:" :side 'right :size 0.5 :select t :ttl nil :quit nil)
  (set-popup-rule! "magit-log:" :size '+popup-shrink-to-fit :side 'right :select t :ttl nil :quit nil)
  (set-popup-rule! "magit-revision:" :size '+popup-shrink-to-fit :side 'right :select t :ttl nil :quit nil))

;;
;; Deadgrep
;;
(add-hook! (deadgrep-mode) #'evil-emacs-state)

;;
;; Company
;;
(after! company (setq company-idle-delay 0.2))

;;
;; Buffer
;;
(setq-default truncate-lines nil)

;;
;; Modeline
;;
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-persp-name t)

;;
;; Design
;;
(setq
 doom-theme 'doom-one-light
 doom-font (font-spec :family "JetBrains Mono" :size 15)
 doom-big-font (font-spec :family "JetBrains Mono" :size 30))
