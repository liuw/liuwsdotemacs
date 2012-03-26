;; development environment configuration
(defun c/c++-conf ()
  (hs-minor-mode)
  (c-set-style "linux")
;;  (setq c-basic-offset 8)
;;  (setq tab-width 8)
;;  (setq indent-tabs-mode t)
;;  (show-ws-toggle-show-trailing-whitespace)
;;  (c-set-style "bsd")
;;  (setq c-basic-offset 4)
;;  (setq indent-tabs-mode nil)
;;  (setq show-trailing-whitespace t)
  (gtags-mode 1)
  )

(add-hook 'c-mode-common-hook 'c/c++-conf)
(add-hook 'c++-mode-hook 'c++-mode-hook)
(add-hook 'lisp-mode-hook 'hs-minor-mode)

;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'vc)
(remove-hook 'find-file-hook 'vc-find-file-hook)
(require 'xcscope)

