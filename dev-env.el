;; development environment configuration
(defun c/c++-conf ()
  (hs-minor-mode)
  (c-set-style "linux")
  (setq c-basic-offset 8)
  (setq tab-width 8)
  (setq indent-tabs-mode t)
  (show-ws-toggle-show-trailing-whitespace)
  )

(add-hook 'c-mode-common-hook 'c/c++-conf)
(add-hook 'c++-mode-hook 'c++-mode-hook)
(add-hook 'lisp-mode-hook 'hs-minor-mode)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
