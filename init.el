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
   material-theme
   ido-completing-read+))

(require 'better-defaults)
(require 'material-theme)
(require 'ido-completing-read+)

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally


;; Ido and related packages
(ido-mode 1) 
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; Language Config 
;; --------------------------------------

(require 'languages)

;; init.el ends here
