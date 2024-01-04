(require 'package)

;; Add melpa to package repos
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(setq package-pinned-packages '())

(package-initialize)

(setq required-packages
      '(
        paredit
        smooth-scrolling
        queue ; undo-tree
        undo-tree
        compat ; paren-face
        paren-face
        company
        ))

;; Install extensions if they're missing
(dolist (p required-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup-package)

