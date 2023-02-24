;;; .emacs --- Emacs initialization file -*- lexical-binding: t; -*-

(setq gc-cons-threshold most-positive-fixnum)

;; Enable company-mode for all files
(add-hook 'after-init-hook #'global-company-mode)
;; enable repeat command in shell
;; https://superuser.com/questions/139815/how-do-you-run-the-previous-command-in-emacs-shell
(progn(require 'comint))
(define-key comint-mode-map (kbd "<up>") 'comint-previous-input)
(define-key comint-mode-map (kbd "<down>") 'comint-next-input)
;; Basic support for editing with spaces instead of tabs
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)


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
    markdown-mode
    go-mode
    monokai-theme
    better-defaults)
  )

; Scans the list in myPackages
;; If the package listed is not already installed, install it
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)


;; ====================================
;; Development Setup

;; python
(elpy-enable)
(setq elpy-rpc-python-command "python3")
(add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))

;; yaml
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; nice visials
(load-theme 'monokai t)

;;; .emacs ends here
