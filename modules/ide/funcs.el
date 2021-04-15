;;; $DOOMDIR/modules/ide/funcs.el -*- lexical-binding: t; -*-

(defun copy-buffer-path()
  "Copy project path."
  (interactive)
  (let ((file-name (project-file-name)))
    (kill-new file-name)
    (message (concat "Copied " file-name))))

(defun project-file-name ()
  "Get buffer file name with projectile root."
  (replace-regexp-in-string (regexp-quote (projectile-project-root)) "" (buffer-file-name)))

(defun counsel-rg-ignore ()
  "rg without ignored files."
  (interactive)
  (counsel-rg))

(defun counsel-rg-no-ignore ()
  "rg with ignored files."
  (interactive)
  (counsel-rg nil nil "--no-ignore"))

(defun search-deadgrep (str)
  "Run Deadgrep search in project."
  (interactive "s String to search: ")
  (setq deadgrep-project-root-overrides projectile-project-root)
  (setq-default deadgrep--search-type 'regexp)
  (deadgrep str))

(defun toggle-maximize-buffer ()
  "Maximize buffer"
  (interactive)
  (if (and (= 1 (length (window-list)))
           (assoc ?_ register-alist))
      (jump-to-register ?_)
    (progn
      (window-configuration-to-register ?_)
      (delete-other-windows))))
