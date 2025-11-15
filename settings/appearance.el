;; Highlight current line
(global-hl-line-mode 1)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; Show line numbers
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;; Hiding parenthesis for both lisper and non-lisper
(require 'paren-face)
(global-paren-face-mode 1)

;; Set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))

(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))

(load-theme 'leuven t)

;; Set face after theme is loaded for customization
;; Set font to SF Mono, the optimal monospaced font on Mac
(set-face-attribute 'default nil :font "TX-02 Retina" :height 120)
;; fallback font for CJK languages
;; see https://www.gnu.org/software/emacs/manual/html_node/emacs/Modifying-Fontsets.html
(set-fontset-font "fontset-default" 'han "PingFang SC")

;; Customize cursor type
;; see https://protesilaos.com/codelog/2022-04-15-emacs-cursory-package/
(blink-cursor-mode 1)
(setq-default cursor-type '(bar . 2)
              cursor-in-non-selected-windows nil
              blink-cursor-blinks 10
              blink-cursor-interval 0.5
              blink-cursor-delay 0.2)

;; Window Dividers
(window-divider-mode)

;; Nice line height for reading
(setq default-text-properties '(line-spacing 0.2 line-height 1.2))

(provide 'appearance)

