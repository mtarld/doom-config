(def-project-mode! +php-symfony-mode
  :modes '(php-mode yaml-mode web-mode)
  :files (and "composer.json" "src/Kernel.php"))
