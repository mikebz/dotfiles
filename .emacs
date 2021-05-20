;; Basic support for editing with spaces instead of tabs
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq make-backup-files nil)

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
  '(use-package
    elpy
    yaml-mode 
    go-mode
    zenburn-theme
    material-theme
    monokai-theme
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
 '(custom-safe-themes
   (quote
    ("f3ab34b145c3b2a0f3a570ddff8fabb92dafc7679ac19444c31058ac305275e1" "d0fa4334234e97ece3d72d86e39a574f8256b4a8699a1fb5390c402892a1c024" default)))
 '(package-selected-packages (quote (lsp-ui lsp-mode monokai-theme zenburn-theme elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ====================================
;; Development Setup

;; python
(elpy-enable)
(setq elpy-rpc-python-command "python3")
(add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))

;; golang                                                                                                                     
(add-hook 'go-mode-hook 'lsp-deferred)

;; yaml
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; nice visials
(load-theme 'material t)
