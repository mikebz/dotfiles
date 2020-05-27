;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
(require 'package)
 
;; Adds the Melpa archive to the list of available repositories
(add-to-list 'package-archives
              '("melpa" . "http://melpa.org/packages/") t)
 
;; Initializes the package infrastructure
(package-initialize)

;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
   (package-refresh-contents))

;; Installs packages
;;
;; myPackages contains a list of package names
(defvar myPackages
  '(elpy
    material-theme
    better-defaults)
   )
 
;; Scans the list in myPackages
;; If the package listed is not already installed, install it
(mapc #'(lambda (package)
	  (unless (package-installed-p package)
	    (package-install package)))
      myPackages)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ====================================
;; Development Setup
;; ====================================
;; Enable elpy
(elpy-enable)

(setq elpy-rpc-python-command "python3")
