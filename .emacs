(display-time)
(setq display-time-24hr-format t)

(column-number-mode t)
(transient-mark-mode t)
(show-paren-mode t)
;; (setq show-paren-style 'parenthesis)
(setq show-paren-style 'mixed)
;; (setq show-paren-style 'expression)

(setq make-backup-files nil)

(setq require-final-newline t)

(setq scroll-margin 3
      scroll-step 1
      scroll-conservatively 10000)

(setq kill-ring-max 500)

(menu-bar-mode -1)

(setq inhibit-startup-screen t)

(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(iswitchb-mode t)
