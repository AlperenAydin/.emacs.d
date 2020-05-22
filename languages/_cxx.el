;; _cxx.el --- C/C++ Emacs Configuration

;; Install Packages
;; --------------------------------------

(load-packages
 '(clang-format
   modern-cpp-font-lock
   flycheck
   company
   projectile
   lsp-mode
   cmake-ide))

;; C/C++ configuration
;; --------------------------------------


;; lsp-mode
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c-mode-hook 'lsp)

;; Cmake-ide
(cmake-ide-setup)

;; company-mode
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)

;; Modern highlighting
(modern-c++-font-lock-global-mode t)

;; Format the file
(global-set-key (kbd "C-c C-f") 'clang-format-region)

(provide '_cxx)
;; _cxx.el ends here
