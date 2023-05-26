;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; Set path to dependencies
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path settings-dir)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Setup packages
(require 'setup-package)
(require 'setup-cc-mode)
(require 'setup-sh-mode)

;; Set up appearance early
(require 'appearance)

;; Lets start with a smattering of sanity
(require 'better-defaults)

;; Setup key bindings
(require 'key-bindings)

;; Set up site packages
(require 'setup-paredit)
(require 'undo-tree)

;; Misc
;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))
(when is-mac (require 'mac))

