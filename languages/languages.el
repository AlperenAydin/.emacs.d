;; languages.el
;; Collect all the language configurations in a single file
;; --------------------------------------

;; Major Language Configs
;; --------------------------------------
(require '_python)
(require '_cxx)
;; Minor Language configs

(load-packages
 '(yaml-mode
   cmake-mode))

;; YAML
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; --------------------------------------
(provide 'languages)
