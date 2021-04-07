;;; config.el -*- lexical-binding: t; -*-

(setq
 +doom-dashboard-banner-file (expand-file-name "logo.png" doom-private-dir)
 +doom-dashboard-menu-sections
 '(("Reload last session"
    :icon (all-the-icons-octicon "history" :face 'font-lock-keyword-face)
    :when (cond ((require 'persp-mode nil t)
                 (file-exists-p (expand-file-name persp-auto-save-fname persp-save-dir)))
                ((require 'desktop nil t)
                 (file-exists-p (desktop-full-file-name))))
    :face (:inherit (font-lock-keyword-face bold))
    :action doom/quickload-session)
   ("Recently opened files"
    :icon (all-the-icons-octicon "file-text" :face 'font-lock-keyword-face)
    :action recentf-open-files)
   ("Projects"
    :icon (all-the-icons-octicon "briefcase" :face 'font-lock-keyword-face)
    :action projectile-switch-project)
   ("TODOs"
    :icon (all-the-icons-octicon "checklist" :face 'font-lock-keyword-face)
    :action org-projectile-goto-location-for-project)
   )
 +doom-dashboard-functions
 '(doom-dashboard-widget-banner
   doom-dashboard-widget-shortmenu
   doom-dashboard-widget-loaded))
