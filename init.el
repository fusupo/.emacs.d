(require 'org)
(require 'ob-tangle)



;; load up all literate org-mode files in this directory
(defvar config-files '("/Users/fusupo/.emacs.d/xtof_secrets.org"
		       "/Users/fusupo/.emacs.d/xtof_init.org"
		       "/Users/fusupo/.emacs.d/xtof_config.org"
		       "/Users/fusupo/.emacs.d/xtof_org.org"
		       "/Users/fusupo/.emacs.d/xtof_startup.org"))
(defun load-config (filename)
  (org-babel-load-file filename))
(mapc #'load-config config-files)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-function-call ((t (:inherit default :foreground "DarkSeaGreen4"))))
 '(neo-root-dir-face ((t (:background "#0c2938" :foreground "#ffd746"))))
 '(org-mode-line-clock ((t (:background "grey75" :foreground "red" :box (:line-width -1 :style released-button)))) t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-type (quote bar))
 '(custom-safe-themes
   (quote
    ("2d7e4feac4eeef3f0610bf6b155f613f372b056a2caae30a361947eab5074716" "30a8a5a9099e000f5d4dbfb2d6706e0a94d56620320ce1071eede5481f77d312" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e56f1b1c1daec5dbddc50abd00fcd00f6ce4079f4a7f66052cf16d96412a09a9" default)))
 '(timesheet-invoice-number 104))
