;;; bindings.el -*- lexical-binding: t; -*-

(map! :localleader
      :map restclient-mode-map
      :desc "Run" "r" #'restclient-http-send-current
      :desc "Copy as CURL" "c" #'restclient-copy-curl-command)
