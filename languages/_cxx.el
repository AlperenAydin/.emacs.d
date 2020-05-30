;; _cxx.el --- C/C++ Emacs Configuration

;; Install Packages
;; --------------------------------------

(load-packages
 '(clang-format
   modern-cpp-font-lock
   flycheck
   company
   company-lsp
   projectile
   lsp-mode
   lsp-ui))

;; C/C++ configuration
;; --------------------------------------


;; lsp-mode
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c-mode-hook 'lsp)

(setq lsp-log-io t)

;; lsp-ui
; sideline
;(setq lsp-ui-sideline-delay 1)
;(setq lsp-ui-sideline-mode t)
;(setq lsp-ui-sideline-show-symbol nil)

;; company-mode
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)

(global-set-key (kbd "C-<tab>") 'company-complete)

;; company-lsp
(push 'company-lsp company-backends)

;; Disable client-side cache because the LSP server does a better job.
(setq company-transformers nil)
(setq company-lsp-async t)
(setq company-lsp-cache-candidates nil)


;; Modern highlighting
(modern-c++-font-lock-global-mode t)

;; Format the file
(global-set-key (kbd "C-c C-f") 'clang-format-region)

(provide '_cxx)
;; _cxx.el ends here
