(if (string< "24" emacs-version)
    (progn (require 'package)
           (add-to-list 'package-archives
                        '("marmalade" .
                          "http://marmalade-repo.org/packages/"))
	   (package-initialize)))
