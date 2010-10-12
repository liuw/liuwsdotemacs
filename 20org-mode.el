;; liuw's org mode configuration
;;
;; use org-mode for .org .org_archive and .txt by default
(add-to-list 'auto-mode-alist 
			 '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-hide-leading-stars t)

;; use GTD style todo keywords
(setq org-log-done t)
(setq org-todo-keywords
	  (list "TODO(t)" "STARTED(s!)" "WAITING(w!)" "|" 
			"CANCELED(c)" "DONE(d)"))
(setq org-agenda-files
	  (list "~/git/org/personal.org"
			"~/git/org/todo.org"
			"~/git/org/project.org"
			"~/git/org/opensource.org")
	  )
(defun todo ()
  (interactive)
  (find-file "~/git/org/todo.org")
  )
