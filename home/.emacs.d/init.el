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

;; load a default theme, modus-theme included in emacs 28
(load-theme 'modus-operandi)

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
