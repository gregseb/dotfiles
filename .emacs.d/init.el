; My emacs init file
(add-to-list 'load-path "~/.emacs.d/elisp/")
;(load "~/.emacs.d/nxhtml/autostart.el")

; Autoload php-mode.el - Comment out next line if using Debian's php-elisp package.
(autoload 'php-mode "php-mode.el" "Php mode." t)
;(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))

; Multi-web-mode setup
; Loading multi-web-mode with a symlink in elisp directory.
(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((drupal-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
		  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
		  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)
; End of multi-web-mode setup

(require 'drupal-mode)

; Set auto modes for drupal related file types (not php and inc files
; are set to open in php-mode.  Switch to drupal-mode manually.

;(add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\)$" . drupal-mode))
;(add-to-list 'auto-mode-alist '("\\.\\(php\\|inc\\)$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\|inc\\|php\\)$" . drupal-mode))
;(add-to-list 'auto-mode-alist '("\\.\\(php\\)$" . php-mode))

(add-to-list 'auto-mode-alist '("\\.info" . conf-windows-mode))

; Load erc customizations - Edit elisp/erc-custom.el before uncommenting next line.
;(load "~/.emacs.d/elisp/erc-custom.el")
; Require drupal-js-mode
(require 'drupal-js-mode)
(add-to-list 'auto-mode-alist '("\\.\\(js\\)$" . drupal-js-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; Some custom options
(setq require-final-newline nil)
