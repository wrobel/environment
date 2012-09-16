;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; BASE
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "timer.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULES
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; BASIC MODULES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(timed-load "site-gentoo")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MODULE elscreen
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/elscreen")
;;(timed-load "elscreen")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; CONFIGURATIONS
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(autoload 'php-mode "01_php_mode" "PHP editing mode." t)
(add-to-list 'auto-mode-alist '("\\.php[s34]?\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . php-mode))

(autoload 'git-status "git" "Entry point into git-status mode." t)
(autoload 'git-blame-mode "git-blame"
  "Minor mode for incremental blame for Git." t)
(unless (fboundp 'vc-git-registered) 
  (add-to-list 'vc-handled-backends 'GIT))

(timed-load "02_emacs")

(timed-load "03_puppet")

(timed-load "04_git")

(timed-load "05_jabber")

(timed-load "06_rcirc")

(timed-load "97_env")

(timed-load "98_personal")

(timed-load "99_keys")
