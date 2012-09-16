;; liuw's emacs ui tuning file

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

;; user interface tuning
(if (or (not (string= system-type "darwin"))
	 (not window-system))
    (menu-bar-mode -1))
(blink-cursor-mode -1)
(if window-system
    (progn
      (scroll-bar-mode -1)
      (tool-bar-mode -1)
      (tabbar-mode t)))
(setq inhibit-startup-screen t)

;; only use color theme for window system
(if window-system
	(progn
	  (require 'color-theme)
	  (setq-default color-theme-is-global t)
	  (color-theme-initialize)
;;	  (color-theme-comidia)
	  (color-theme-calm-forest)
	  )
  )

;; cursor color
(set-cursor-color "Red")

;; move mouse pointer when it overlaps cursor
(mouse-avoidance-mode 'animate)
