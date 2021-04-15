;;; funcs.el -*- lexical-binding: t; -*-

(defun php-cs-fixer--find-config-path ()
  "Find config path to be used"
  (php-cs-fixer--first-filter-map
   (lambda (path)
     (not (null path)))
   (lambda (path)
     (when (and (char-or-string-p path) (file-exists-p path))
       path))
   (list (concat (projectile-project-root) ".php_cs") (concat (projectile-project-root) ".php_cs.dist") (expand-file-name "~/.doom.d/modules/symfony/phpcsfixer/.php_cs"))))

(defun php-cs-fixer--first-filter-map (filter map seq)
  "Return first element of applying FILTER and MAP on SEQ."
  (car (seq-filter
         filter
         (mapcar
          map
          seq))))
