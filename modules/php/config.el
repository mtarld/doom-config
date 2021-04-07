;;; config.el -*- lexical-binding: t; -*-

;; Enable LSP
(add-hook! 'php-mode-hook #'lsp)

;; Enable Symfony2 coding style
(add-hook! 'php-mode-hook
  (custom-set-variables '(php-mode-coding-style 'symfony2)))

;; Disable phpcs
(add-hook! 'php-mode-hook
  (push 'php-phpcs flycheck-disabled-checkers))

;; Load proper config for phpcs fixer
(add-hook! 'php-mode-hook
  (custom-set-variables '(php-cs-fixer-config-option (php-cs-fixer--find-config-path))))
