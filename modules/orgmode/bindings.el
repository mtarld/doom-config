;;; $DOOMDIR/modules/orgmode/bindings.el -*- lexical-binding: t; -*-

(map! :leader
      (:prefix ("p")
        :desc "Add todo" "C-t" #'org-projectile-project-todo-completing-read
        :desc "Open todos" "T" #'org-projectile-goto-location-for-project))

(map! :map org-mode-map
      :localleader
      "E" #'org-set-effort)
