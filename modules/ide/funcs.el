;;; funcs.el -*- lexical-binding: t; -*-

(defun copy-buffer-path()
  "Copy project path."
  (interactive)
  (let ((file-name (project-file-name)))
    (kill-new file-name)
    (message (concat "Copied " file-name))))

(defun project-file-name ()
  "Get buffer file name with projectile root."
  (replace-regexp-in-string (regexp-quote (projectile-project-root)) "" (buffer-file-name)))

(defun js-indent (level)
  "Change js indentation level"
  (interactive "n Indent level: ")
  (setq js-indent-level level)
  (setq js2-basic-offset level)
  )

(defun css-indent (level)
  "Change css indentation level"
  (interactive "n Indent level: ")
  (setq css-indent-offset level)
  )

(defun html-indent (level)
  "Change html indentation level"
  (interactive "n Indent level: ")
  (setq web-mode-markup-indent-offset level)
  (setq web-mode-code-indent-offset level)
  (setq web-mode-attr-indent-offset level)
  )

(defun web-indent (level)
  "Change html, js and css indentation level"
  (interactive "n Indent level: ")
  (setq js2-basic-offset level)
  (setq css-indent-offset level)
  (setq web-mode-markup-indent-offset level)
  (setq web-mode-css-indent-offset level)
  (setq web-mode-code-indent-offset level)
  (setq web-mode-attr-indent-offset level)
  )

(defun search-deadgrep (str)
  "Run Deadgrep search in project."
  (interactive "s String to search: ")
  (setq deadgrep-project-root-overrides projectile-project-root)
  (setq-default deadgrep--search-type 'regexp)
  (funcall 'deadgrep str))

(defun toggle-maximize-buffer ()
  "Maximize buffer"
  (interactive)
  (if (and (= 1 (length (window-list)))
           (assoc ?_ register-alist))
      (jump-to-register ?_)
    (progn
      (window-configuration-to-register ?_)
      (delete-other-windows))))
