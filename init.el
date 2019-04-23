;; init.el --- Emacs configuration


;; Set the Path
;; --------------------------------------
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Global Package Configuration
;; --------------------------------------

(require 'package)
(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t) 
(package-initialize)

(defun load-packages (package-list)
  (mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      package-list))

;; Global Customization
;; --------------------------------------

(load-packages
 '(better-defaults
   material-theme))

(require 'better-defaults)
(require 'material-theme)

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages (quote (py-autopep8 flycheck elpy better-defaults))))

;; Language Config 
;; --------------------------------------

(require 'languages)

;; init.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
