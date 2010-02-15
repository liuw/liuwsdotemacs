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

;; smooth scrolling
(setq scroll-margin 3
      scroll-step 1
      scroll-conservatively 10000)

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
