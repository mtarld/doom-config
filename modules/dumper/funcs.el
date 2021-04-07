;;; funcs.el -*- lexical-binding: t; -*-

(defvar dumper-dumps '(
    ("php-mode" . ("dd(" ");"))
    ("js2-mode" . ("console.log(" ");"))
    ("default" . ("dump(" ");"))))

(defun dumper-before (start end)
  "Write dump method of text from START to END before before current line."
  (interactive "r")
  (dumper--insert-before (dumper--get-selected-text start end)))

(defun dumper-after (start end)
  "Write dump method of text from START to END before before current line."
  (interactive "r")
  (dumper--insert-after (dumper--get-selected-text start end)))

(defun dumper--insert-before (content)
  "Insert dump method of CONTENT on next line."
  (save-excursion
    (forward-line -1)
    (end-of-line)
    (newline)
    (insert (dumper--get-text-to-insert content))
    (indent-according-to-mode)))

(defun dumper--insert-after (content)
  "Insert dump method of CONTENT on next line."
  (save-excursion
    (end-of-line)
    (newline)
    (insert (dumper--get-text-to-insert content))
    (indent-according-to-mode)))

(defun dumper--get-text-to-insert (content)
  "Get dump method string of CONTENT."
  (let ((dump (dumper--get-text-from-dumps (prin1-to-string major-mode) content)))
    (if (string= dump content)
        (dumper--get-text-from-dumps "default" content)
      dump)))

(defun dumper--get-text-from-dumps (mode content)
  "Get built dump string using MODE and CONTENT and dumper-dumps."
  (concat
   (car (cdr (assoc mode dumper-dumps)))
   content
   (car (cdr (cdr (assoc mode dumper-dumps))))))

(defun dumper--get-selected-text (start end)
  "Retrieves selected text from START to END."
  (if (use-region-p)
      (let ((regionp (buffer-substring start end)))
        (message regionp))))
