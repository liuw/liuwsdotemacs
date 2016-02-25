;; Useful key bindings go here

(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))


(global-set-key (kbd "C-h a") 'apropos)

(global-set-key [f1] 'ido-switch-buffer)
(global-set-key [f2] 'switch-to-previous-buffer)
(global-set-key [f3] 'find-file)
(global-set-key [f4] 'save-buffer)


(global-set-key [f7] 'kmacro-start-macro-or-insert-counter)
(global-set-key [f8] 'kmacro-end-or-call-macro)
(global-set-key [f9] 'call-last-kbd-macro)

(global-set-key [f5] 'point-to-register)
(global-set-key [f6] 'jump-to-register)

;; Disable suspend when running in GUI mode
(defun ignore-c-z ()
  (interactive)
  (message "C-z is ignored, use C-x C-z to suspend"))
(if (window-system)
  (global-set-key (kbd "C-z") 'ignore-c-z))


;; Use helm-M-x if available
(if (fboundp 'helm-M-x)
    (global-set-key (kbd "M-x") 'helm-M-x))
