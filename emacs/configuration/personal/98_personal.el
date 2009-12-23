;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; PERSONAL PREFERENCES
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Changelog entries
(setq add-log-full-name "Gunnar Wrobel")
(setq add-log-mailing-address "p@rdus.de")

;; Browser preference
(setq browse-url-browser-function (quote w3m-browse-url))

;; Highlighting preferences
(custom-set-faces
 '(font-lock-function-name-face ((((class color) (min-colors 8)) (:foreground "yellow" :weight bold))))
 '(nxml-delimited-data-face ((((class color) (background light)) (:foreground "#7B7B3A")))))
