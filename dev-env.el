;; development environment configuration
(defun c/c++-conf ()
  (hs-minor-mode)
  (c-set-style "bsd")
  )


(add-hook 'c-mode-common-hook 'c/c++-conf)
(add-hook 'c++-mode-hook 'c++-mode-hook)
(add-hook 'lisp-mode-hook 'hs-minor-mode)
