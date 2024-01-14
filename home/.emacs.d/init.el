;;; init.el --- A minimal emacs configuration

;; Mike Barker <mike@thebarkers.com>
;; January 13th, 2024

;; This configuration was influnced from the "Emacs From Scratch" youtube series.
;; https://www.youtube.com/watch?v=OaF-N-FuGtc&list=PLEoMzSkcN8oNmd98m_6FoaJseUsa6QGm2&pp=iAQB

;; configure ui
(setq inhibit-startup-screen t
      visible-bell t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

;; save recent files
(recentf-mode t)

;; save mini-buffer interactions
(setq history-length 25)
(savehist-mode t)

;; save the place in all files
(save-place-mode t)

;; store 'customize' settings in "customize.el" file
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror 'nomessage)

;; never use a graphical dialog box
(setq use-dialog-box nil)

;; revert buffers that have changed on disk, but not in emacs
(global-auto-revert-mode t)

;; revert non-file buffers, dired etc
(setq global-auto-revert-non-file-buffers t)

;;; Load modus theme, and customize it's settings

;; Configure modus-theme: mode line
(setq modus-themes-mode-line '(accented borderless (padding . 2) (height . 0.9)))

;; Configure modus-theme: regions
(setq modus-themes-region '(bg-only))

;; Configure modus-theme: completion
(setq modus-themes-completions
          (quote ((matches . (extrabold background intense))
                  (selection . (semibold accented intense))
                  (popup . (accented)))))

;; Configure modus-theme: syntax
(setq modus-themes-bold-constructs t)
(setq modus-themes-italic-constructs t)
(setq modus-themes-paren-match '(bold intense underline))
(setq modus-themes-syntax '(alt-syntax green-strings yellow-comments))

;; Org Mode headings
(setq modus-themes-headings
      '((1 . (overline background  variable-pitch 1.3))
        (2 . (overline rainbow 1.2))
	(3 . (overline 1.1))
        (t . (monochrome))))

(setq modus-themes-scale-heading t)

;; Org Mode Source blocks
;; Note: if you change this, it will not be visible in currently opened org files until you restart org mode. `org-mode-restart`
(setq modus-themes-org-blocks 'tinted-background)

;; Load the modus theme
(load-theme 'modus-operandi)

