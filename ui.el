
;; only useful with gui
(setq frame-title-format "%b@emacs")

;; display time and set time format
(display-time)
(setq display-time-24hr-format t)

;; tweak editing experience
(column-number-mode t)
(transient-mark-mode t)
(show-paren-mode t)
;; (setq show-paren-style 'parenthesis)
(setq show-paren-style 'mixed)
;; (setq show-paren-style 'expression)
;; (hl-line-mode t)
(scroll-bar-mode -1)
;; user interface tuning
(menu-bar-mode -1)
(if window-system
	(tool-bar-mode -1))
(setq inhibit-startup-screen t)

;; only use color theme for window system
(if window-system
	(progn
	  (require 'color-theme)
	  (setq-default color-theme-is-global t)
	  (color-theme-initialize)
	  (color-theme-comidia)
	  )
  )
