;; miscellaneous settings
(setq inhibit-splash-screen t) ; disable splash screen
(global-linum-mode) ; show line number
(column-number-mode) ; show column number
(xterm-mouse-mode) ; enable mouse
(setq-default major-mode 'text-mode) ; set default mode as text mode
(global-set-key "\C-x\C-b" 'buffer-menu) ; list buffers in current windows

;; add melpa package source
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; install fill-column-indicator if not, configure and eanble it.
(unless (package-installed-p 'fill-column-indicator)
  (package-install 'fill-column-indicator))
(require 'fill-column-indicator)
(setq-default fci-rule-column 80)
(add-hook 'prog-mode-hook 'fci-mode) ; enable fci-mode in program mode
