;; _python.el --- Python Emacs Configuration

;; Install Packages
;; --------------------------------------

(load-packages
 '(ein
   elpy
   pyvenv
   anaconda-mode
   conda
   flycheck
   py-autopep8))


;; Python Configuration
;; --------------------------------------

;; Set elpy
(elpy-enable)

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Changing the autocomplete-trigger
(add-hook 'elpy-mode-hook
          (lambda ()
            (local-unset-key  [M-tab])
            (define-key elpy-mode-map [C-tab] 'elpy-company-backend)))


;; Activating the base virtualenv
(pyvenv-activate (expand-file-name "/home/alperen/.environments/base"))


(provide '_python)

;; _python.el ends here
