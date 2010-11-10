;; Basic extension directory
(setq environment-path "~/environment")

(add-to-list 'load-path (concat environment-path "/emacs/configuration/generic"))
(add-to-list 'load-path (concat environment-path "/emacs/configuration/personal"))
(add-to-list 'load-path (concat environment-path "/emacs/lisp"))

(load "00_emacs.el")
