;; init.el --- Emacs configuration


;; Set the Path
;; --------------------------------------
(let ((default-directory "~/.emacs.d/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Global Package Configuration
;; --------------------------------------

(require 'package)
(setq package-archives
      '(
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("marmalade" . "https://marmalade-repo.org/packages/")))
 
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
   ido-completing-read+
   magit
   which-key
   use-package
   ))

(require 'better-defaults)
(require 'material-theme)
(require 'ido-completing-read+)

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
(menu-bar-mode 1) ;; Activate the menu-bar

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; which-key
(which-key-mode)

;; Ido and related packages
(ido-mode 1) 
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(global-set-key (kbd "C-x C-d") 'ido-dired)
;; Language Config 
;; --------------------------------------

(require 'languages)

;; init.el ends here
