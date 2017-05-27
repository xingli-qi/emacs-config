;; miscellaneous settings
(setq inhibit-splash-screen t) ; disable splash screen
(global-linum-mode) ; show line number
(column-number-mode) ; show column number
(xterm-mouse-mode) ; enable mouse
(setq-default major-mode 'text-mode) ; set default mode as text mode
(global-set-key "\C-x\C-b" 'buffer-menu) ; list buffers in current windows
(setq-default Buffer-menu-name-width 40) ; set buffer name field width to 40
;(menu-bar-mode 0) ; disable menu bar
(tool-bar-mode 0) ; disable tool bar
(electric-pair-mode); toggle auto pair parenthesis interstion
(which-func-mode); display the top-level function name where the cursor is

;; default frame size
(add-to-list 'default-frame-alist '(height . 30))
(add-to-list 'default-frame-alist '(width . 85))

;; c/c++ related settings
(setq-default c-basic-offset 4)
(show-paren-mode t) ; show matching parenthesis
(c-set-offset 'innamespace 0) ; don't indent for namespace
(c-set-offset 'access-label -2) ; private, public etc. indented by 2 spaces

;; add melpa package source
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; install ggtags if not, configure and eanble it.
(unless (package-installed-p 'ggtags)
  (package-install 'ggtags))
(require 'ggtags)
;; enable ggtags in c/c++/java mode
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))

;; install fill-column-indicator if not, configure and eanble it.
(unless (package-installed-p 'fill-column-indicator)
  (package-install 'fill-column-indicator))
(require 'fill-column-indicator)
(setq-default fci-rule-column 80)
(add-hook 'prog-mode-hook 'fci-mode) ; enable fci-mode in program mode

;; install auto-complete if not and enable it
(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))
(ac-config-default) ; enable auto-complete

;; install sr-speedbar if not and configure
(unless (package-installed-p 'sr-speedbar)
  (package-install 'sr-speedbar))
(setq-default sr-speedbar-width 40)
(setq-default sr-speedbar-max-width 40)
(setq-default sr-speedbar-right-side nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "#e1e1e0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :foundry "nil" :family "Courier New")))))
