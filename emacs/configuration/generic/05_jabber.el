;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; JABBER SUPPORT
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'jabber-autoloads)
(require 'starttls)

(setf jabber-autoaway-status "Currently unavailable"
      jabber-vcard-avatars-retrieve nil)

(setq tls-checktrust 'ask)
(setq tls-program
      '("gnutls-cli --x509cafile /etc/ssl/certs/ca-certificates.crt -p %p %h"
        "gnutls-cli --x509cafile /etc/ssl/certs/ca-certificates.crt -p %p %h --protocols ssl3"
        "openssl s_client -debug -connect %h:%p -CAfile /etc/ssl/certs/ca-certificates.crt -no_ssl2"))

(setq jabber-debug-log-xml t)
(setq jabber-debug-keep-process-buffers t)
