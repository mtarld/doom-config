;;; bindings.el -*- lexical-binding: t; -*-

(map! "C-s" #'swiper)

(map! :leader
      :desc "Ripgrep in project" "." #'counsel-rg
      :desc "Deadgrep in project" "r" #'search-deadgrep

      (:prefix ("b")
        :nv "k" nil
        :desc "Kill buffer" "d" #'kill-current-buffer
        :desc "Switch to last buffer" "TAB" #'evil-switch-to-windows-last-buffer)

      (:prefix ("c")
        :desc "Comment line" "l" #'comment-line)

      (:prefix ("w")
        :desc "Split vertically" "/" #'evil-window-vsplit
        :desc "Split horizontally" "_" #'evil-window-split
        :nv "c" nil
        :desc "Close window" "d" #'+workspace/close-window-or-workspace
        :desc "Maximize buffer" "m" #'toggle-maximize-buffer)

      (:prefix ("S")
        :desc "Search in opened buffers" "s" #'multi-occur-in-matching-buffers
        :desc "Replace string" "r" #'replace-string)

      (:prefix ("g")
        :desc "Show hunk" "h" #'git-gutter+-show-hunk)

      (:prefix ("f")
        :desc "Copy file" "c" #'doom/copy-this-file
        :desc "Save all files" "S" #'evil-write-all)

      (:prefix ("p")
        :desc "Yank relative filename" "y" #'copy-buffer-path))
