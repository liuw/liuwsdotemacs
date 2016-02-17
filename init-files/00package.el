(if (string< emacs-version "24")
    (progn (require 'package)
           (add-to-list 'package-archives
                        '("marmalade" .
                          "http://marmalade-repo.org/packages/"))
	   (add-to-list 'package-archives
			'("melpa" .
			  "http://melpa.org/packages/"))
	   (package-initialize)))
