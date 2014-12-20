(require 'org)
(require 'ob-tangle)



;; load up all literate org-mode files in this directory
(defvar config-files '("/Users/fusupo/.emacs.d/xtof_secrets.org"
		       "/Users/fusupo/.emacs.d/xtof_config.org"
		       "/Users/fusupo/.emacs.d/xtof_init.org"
		       "/Users/fusupo/.emacs.d/xtof_org.org"
		       "/Users/fusupo/.emacs.d/xtof_startup.org"))
(defun load-config (filename)
  (org-babel-load-file filename))
(mapc #'load-config config-files)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-window-setup (quote current-window))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (scheme . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-habit-alert-future-face ((t (:background "#edb443"))))
 '(org-habit-clear-future-face ((t (:background "#195466"))))
 '(org-habit-overdue-future-face ((t (:background "#c23127"))))
 '(org-habit-ready-future-face ((t (:background "#2aa889")))))
