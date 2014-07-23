;; Some notes on Haskell development environment
;;
;; C-c C-t: inferior-haskell-type, query type for an expression
;; C-c C-i: inferior-haskell-info, query info for an expression
;; C-c C-b: start interpreter
;;

(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;; Use flycheck for realtime checking
(add-hook 'haskell-mode-hook 'flycheck-mode)
