;; languages.el
;; Collect all the language configurations in a single file
;; --------------------------------------

;; Major Language Configs
;; --------------------------------------
(require '_python)

;; Minor Language configs

(load-packages
 '('yaml-mode))

;; YAML
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; --------------------------------------
(provide 'languages)
