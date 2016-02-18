;; Useful key bindings go here

(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))


(global-set-key (kbd "C-h a") 'apropos)

(global-set-key [f1] 'ido-switch-buffer)
(global-set-key [f2] 'switch-to-previous-buffer)
(global-set-key [f3] 'previous-buffer)
(global-set-key [f4] 'next-buffer)


(global-set-key [f7] 'kmacro-start-macro-or-insert-counter)
(global-set-key [f8] 'kmacro-end-or-call-macro)
(global-set-key [f9] 'call-last-kbd-macro)

(global-set-key [f5] 'point-to-register)
(global-set-key [f6] 'jump-to-register)
