(if (string< "24" emacs-version)
    (progn (require 'package)
           (add-to-list 'package-archives
                        '("marmalade" .
                          "http://marmalade-repo.org/packages/"))
	   (add-to-list 'package-archives
			'("melpa" .
			  "http://melpa.org/packages/"))
	   (package-initialize)))
