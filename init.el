(require 'org)
(require 'ob-tangle)

;; load up all literate org-mode files in this directory
(org-babel-load-file (expand-file-name "~/.emacs.d/xtof.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fci-dash-pattern 0.25)
 '(fci-rule-color "DeepSkyBlue4")
 '(fci-rule-column 80)
 '(fci-rule-use-dashes t)
 '(global-fci-mode t)
 '(org-level-color-stars-only t)
 '(org-src-fontify-natively t)
 '(org-stuck-projects (quote ("+LEVEL=2/-DONE" ("NEXT") nil ""))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
