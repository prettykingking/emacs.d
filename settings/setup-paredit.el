(require 'paredit)

(add-hook 'scheme-mode-hook (lambda () (paredit-mode 1)))
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode 1)))

(provide 'setup-paredit)
