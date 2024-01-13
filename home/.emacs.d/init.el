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

