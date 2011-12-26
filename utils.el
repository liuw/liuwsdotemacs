;; liuw's utils

(defun liuw-find-el-in-directory (directory)
  "List the .el files in DIRECTORY"
  ;; This can be made recursive
  (interactive "DDirectory: ")
  (let (el-files-list
		(current-directory-list
		 (directory-files-and-attributes directory t)))
	(while current-directory-list
	  (if (equal ".el"
				 (substring (car (car current-directory-list)) -3))
		  (setq el-files-list
				(cons (car (car current-directory-list)) el-files-list)))
	  (setq current-directory-list (cdr current-directory-list)))
	el-files-list))

(defun liuw-get-sorted-el-list (directory)
  (interactive "DDirectory: ")
  (let ((l (sort (liuw-find-el-in-directory directory) 'string<)))
	l))

(defun liuw-load-ordered-startup-el (directory)
  (interactive "DDirectory: ")
  (let ((l (liuw-get-sorted-el-list directory)))
	(while l
	  (load-file (car l))
	  (setq l (cdr l)))))

(defun liuw-sudo-find-file (file)
  (interactive "FFile: ")
  (find-file (concat "/sudo:localhost:" (expand-file-name file))))
