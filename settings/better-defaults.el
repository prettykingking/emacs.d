;; Real emacs knights don't use shift to mark things
(setq shift-select-mode nil)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Write all autosave files in the one place, don't clutter up file tree
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name (concat user-emacs-directory "auto-save-list/")) t)))

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

;; Remove text in active region if inserting text
(delete-selection-mode 1)

;; Always display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Lines should be 80 characters wide, not 72
(setq fill-column 80)
;; 80 chars is a good width.
(set-default 'fill-column 80)

;; Fill column indicator
(setq display-fill-column-indicator-column 80)
(global-display-fill-column-indicator-mode 1)

;; Never insert tabs
(setq-default indent-tabs-mode nil)

;; Show empty lines at the end of buffer
(setq-default indicate-empty-lines t)
(setq-default show-trailing-whitespace t)

;; Don't break lines for me, please
(setq-default truncate-lines t)

;; Keep cursor away from edges when scrolling up/down
(require 'smooth-scrolling)

(provide 'better-defaults)
