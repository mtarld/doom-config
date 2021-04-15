;;; $DOOMDIR/modules/symfony/mode/autoload.el -*- lexical-binding: t; -*-

(def-project-mode! +php-symfony-mode
  :modes '(php-mode yaml-mode web-mode)
  :on-enter (progn
              (setq yaml-indent-offset 4))
  :files (and "composer.json" "src/Kernel.php"))
