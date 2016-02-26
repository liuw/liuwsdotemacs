;; Some notes on Haskell development environment
;;
;; C-c C-t: inferior-haskell-type, query type for an expression
;; C-c C-i: inferior-haskell-info, query info for an expression
;; C-c C-b: start interpreter
;;

(defun haskell-conf ()
  (turn-on-haskell-indent)
  (electric-indent-mode -1))

(add-hook 'haskell-mode-hook 'haskell-conf)

;; Use flycheck for realtime checking
(add-hook 'haskell-mode-hook 'flycheck-mode)
