;; development environment configuration
(defun c/c++-conf ()
  (hs-minor-mode)
  (c-set-style "linux")
;;  (setq c-basic-offset 8)
;;  (setq tab-width 8)
;;  (setq indent-tabs-mode t)
;;  (show-ws-toggle-show-trailing-whitespace)
  (setq show-trailing-whitespace t)
;;  (c-set-style "bsd")
;;  (setq c-basic-offset 4)
;;  (setq indent-tabs-mode nil)
  (highlight-lines-matching-regexp ".\\{81\\}" 'hi-green)
  (helm-gtags-mode 1)
  )

(add-hook 'c-mode-common-hook 'c/c++-conf)
(add-hook 'c-mode-common-hook 'flyspell-prog-mode)
(add-hook 'c++-mode-hook 'c++-mode-hook)
(add-hook 'lisp-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'c-mode-common-hook 'hs-minor-mode)


;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

;; completely remove Git from vc-mode backends, maybe use magit in the future?
(setq vc-handled-backends (quote (RCS CVS SVN SCCS Bzr Hg Mtn Arch)))

;; (require 'xcscope)

(which-func-mode)
