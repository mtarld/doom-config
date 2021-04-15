;;; $DOOMDIR/modules/orgmode/config.el -*- lexical-binding: t; -*-

;;
;; Projectile
;;
(use-package! org-projectile
  :init
  (setq
   org-link-elisp-confirm-function nil
   org-agenda-files '("~/org/projects.org")))

;;
;; Agenda
;;
(set-popup-rule! "^\\*Org Agenda\\*$" :side 'right :size 0.4 :select t)

(after! org
  (map!
   :n "M-j" #'org-metadown
   :n "M-k" #'org-metaup)
  (setq
   org-log-done 'time
   org-agenda-skip-scheduled-if-done t
   org-agenda-skip-deadline-if-done t
   org-columns-default-format "%TODO %PRIORITY %30ITEM %17SCHEDULED %17DEADLINE %6Effort(Effort){:} %6CLOCKSUM %TAGS "
   org-startup-folded t
   org-todo-keywords '(
                       (sequence "IDEA(i)" "TODO(t)" "NEXT(n)" "STARTED(s)" "WAITING(w)" "|" "DONE(d)")
                       (sequence "|" "CANCELED(c)" "DELEGATED(l)" "SOMEDAY(f)"))
   org-todo-keyword-faces
   '(("IDEA" . (:foreground "GoldenRod" :weight bold))
     ("NEXT" . (:foreground "IndianRed1" :weight bold))
     ("STARTED" . (:foreground "OrangeRed" :weight bold))
     ("WAITING" . (:foreground "coral" :weight bold))
     ("CANCELED" . (:foreground "#A1A1A1" :weight bold))
     ("DELEGATED" . (:foreground "#C2C2C2" :weight bold))
     ("SOMEDAY" . (:foreground "#C2C2C2" :weight bold)))
   org-tag-persistent-alist
   '((:startgroup . nil)
     ("HOME" . ?h)
     ("RESEARCH" . ?r)
     ("DEV" . ?d)
     (:endgroup . nil)
     (:startgroup . nil)
     ("EASY" . ?e)
     ("MEDIUM" . ?m)
     ("HARD" . ?a)
     (:endgroup . nil)
     ("URGENT" . ?u))
   org-tag-faces
   '(("HOME" . (:foreground "GoldenRod" :weight bold))
     ("RESEARCH" . (:foreground "GoldenRod" :weight bold))
     ("DEV" . (:foreground "IndianRed1" :weight bold))
     ("URGENT" . (:background "OrangeRed" :foreground "white" :weight bold))
     ("EASY" . (:foreground "#85BE03" :weight bold))
     ("MEDIUM" . (:foreground "GoldenRod" :weight bold))
     ("HARD" . (:foreground "OrangeRed" :weight bold))))
  (add-to-list 'org-global-properties '("Effort_ALL". "0 0:15 0:30 0:45 1:00 2:00 3:00 4:00 5:00 6:00 7:00 8:00 12:00 16:00 32:00 64:00 128:00"))
  (add-to-list 'org-global-properties '("COOKIE_DATA". "todo recursive")))
