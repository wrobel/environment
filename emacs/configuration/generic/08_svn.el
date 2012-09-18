;; -----------------------------------------------------------------------------
;; Svn support
;; -----------------------------------------------------------------------------

(autoload 'svn-status "psvn" "Entry point into svn-status mode." t)
(unless (fboundp 'vc-svn-registered) 
  (add-to-list 'vc-handled-backends 'SVN))
