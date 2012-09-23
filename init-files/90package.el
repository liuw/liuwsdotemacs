(require 'package)

(if (string< "24" emacs-version)
    (add-to-list 'package-archives
		 '("marmalade" .
		   "http://marmalade-repo.org/packages/")))
