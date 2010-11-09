; Autoload puppet mode
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")

; Link the mode to .pp files
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))
