;; liuw's dotemacs file

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

;; no backup files
(setq make-backup-files nil)

;; automatically add a new line
(setq require-final-newline t)

;; smooth scrolling for keyboard
(setq scroll-margin 3
      scroll-step 1
      scroll-conservatively 10000)
;; smooth scrolling for mouse wheel
(defun mouse-smooth-scroll (increment)
  (scroll-up increment) (sit-for 0.05)
  (scroll-up increment) (sit-for 0.02)
  (scroll-up increment) (sit-for 0.02)  
  (scroll-up increment) (sit-for 0.05)
  (scroll-up increment) (sit-for 0.06)
  (scroll-up increment))

(global-set-key [(mouse-5)] '(lambda() (interactive) (mouse-smooth-scroll 1)))
(global-set-key [(mouse-4)] '(lambda() (interactive) (mouse-smooth-scroll -1)))

;; bigger kill ring
(setq kill-ring-max 500)

;; user interface tuning
(menu-bar-mode -1)
(if window-system
	(tool-bar-mode -1))
(setq inhibit-startup-screen t)

;; coding system preferences
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; interactive switch buffer mode
(iswitchb-mode t)

;; default tab width is 2, change it to 4
(setq default-tab-width 4)

;; syntax highlight
(global-font-lock-mode t)

;; start an emacs server
(server-start)

;; cursor color
(set-cursor-color "Red")

;; org mode configuration
;; use org-mode for .org .org_archive and .txt by default
(add-to-list 'auto-mode-alist 
			 '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; only use color theme for window system
(if window-system
	(progn
	  (require 'color-theme)
	  (setq-default color-theme-is-global t)
	  (color-theme-initialize)
	  (color-theme-comidia)
	  )
  )
