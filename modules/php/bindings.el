;;; bindings.el -*- lexical-binding: t; -*-

(map! :localleader
      :map php-mode-map

      :desc "Enable LSP" "l" #'lsp
      (:prefix ("f" . "PHP CS Fixer")
       :desc "Fix" "f" #'php-cs-fixer-fix
       :desc "Enable auto" "e" #'php-cs-fixer-enable
       :desc "Disable auto" "d" #'php-cs-fixer-disable))
