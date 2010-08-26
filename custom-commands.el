;; Custom functions

(defun sudo-find-file (file dir)
  (find-file (concat "/sudo:localhost:" (expand-file-name file dir))))
