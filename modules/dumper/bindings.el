;;; bindings.el -*- lexical-binding: t; -*-

(map! :leader
      (:prefix ("d" . "Dump")
        :desc "Dump after" "d" #'dumper-after
        :desc "Dump before" "D" #'dumper-before))
