(setq inhibit-splash-screen t) ; disable splash screen

(global-linum-mode) ; show line number

(column-number-mode) ; show column number

(xterm-mouse-mode) ; enable mouse

;; add melpa package source
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; install fill-column-indicator if not
(unless (package-installed-p 'fill-column-indicator)
  (package-install 'fill-column-indicator))
(require 'fill-column-indicator)
(setq-default fci-rule-column 80)
(add-hook 'prog-mode-hook 'fci-mode) ; enable fci-mode in program mode
