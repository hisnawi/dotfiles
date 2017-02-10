;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; My personal additions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; To manually update prelude and the packages installed:
;1.Update all bundled packages:
;Just run M-x package-list-packages RET U x.
;2.Update Prelude's code:
;cd ~/.emacs.d
;git pull

;;; My packages - make sure they are installed
(defvar rammari/packages
  '(
    ahg
    company-irony
    helm-swoop
    igrep
    irony
    )
  )
(dolist (p rammari/packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;;; Set default font
(set-face-font 'default "-unknown-DejaVu Sans Mono-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")

;;;; Package enables
;;; Helm
;; General configs
(helm-autoresize-mode 1) ; Auto resize helm buffer

;; Remove dotted Dired in the beginning of helm-find-file
(require 'cl-lib)
(defvar no-dots-whitelist
  '()
  "List of helm buffers in which to show dots.")
(defun no-dots/whitelistedp ()
  (member (with-helm-buffer (buffer-name)) no-dots-whitelist))
(defun no-dots/helm-ff-filter-candidate-one-by-one (fcn file)
  (when (or (no-dots/whitelistedp)
            (not (string-match "\\(?:/\\|\\`\\)\\.\\{1,2\\}\\'" file)))
    (funcall fcn file)))
(defun no-dots/helm-file-completion-source-p (&rest args) t)
(defun no-dots/helm-attrset (fcn attribute-name value &optional src)
  (let ((src (or src (helm-get-current-source))))
    (when src
      (funcall fcn attribute-name value src))))
(defun no-dots/helm-find-files-up-one-level (fcn &rest args)
  (advice-add 'helm-file-completion-source-p
              :around 'no-dots/helm-file-completion-source-p)
  (advice-add 'helm-attrset
              :around 'no-dots/helm-attrset)
  (let ((res (apply fcn args)))
    (advice-remove 'helm-file-completion-source-p
                   'no-dots/helm-file-completion-source-p)
    (advice-remove 'helm-attrset
                   'no-dots/helm-attrset)
    res))
(with-eval-after-load 'helm-files
  (advice-add 'helm-ff-filter-candidate-one-by-one
              :around 'no-dots/helm-ff-filter-candidate-one-by-one)
  (advice-add 'helm-find-files-up-one-level
              :around 'no-dots/helm-find-files-up-one-level))

;; Make "return" enter directory/file
(defun fu/helm-find-files-navigate-forward (orig-fun &rest args)
 (if (and (equal "Find Files" (assoc-default 'name (helm-get-current-source)))
         (equal args nil)
         (stringp (helm-get-selection))
         (not (file-directory-p (helm-get-selection))))
    (helm-maybe-exit-minibuffer)
  (apply orig-fun args)))
(advice-add 'helm-execute-persistent-action :around #'fu/helm-find-files-navigate-forward)
(define-key helm-find-files-map (kbd "<return>") 'helm-execute-persistent-action)
(defun fu/helm-find-files-navigate-back (orig-fun &rest args)
  (if (= (length helm-pattern) (length (helm-find-files-initial-input)))
      (helm-find-files-up-one-level 1)
    (apply orig-fun args)))
(advice-add 'helm-ff-delete-char-backward :around #'fu/helm-find-files-navigate-back)

;; Cntl+up/down check search lines in code
(defun VisualizeandGoNextBufferOrLine ()
  "Helm visualize and select next search."
  (interactive)
  (helm-next-line)
  (helm-execute-persistent-action))
(defun VisualizeandGoPreviousBufferOrLine ()
  "Helm visualize and select previous search."
  (interactive)
  (helm-previous-line)
  (helm-execute-persistent-action))
(define-key helm-map (kbd "<next>")  'VisualizeandGoNextBufferOrLine)
(define-key helm-map (kbd "<prior>")  'VisualizeandGoPreviousBufferOrLine)

;;; irony
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; Package specifics
;;; Remap projectile useful functions
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
;;(define-key projectile-mode-map [?\A-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)
(define-key projectile-mode-map [?\s-t] 'projectile-find-tag)
(define-key projectile-mode-map [?\s-a] 'helm-do-grep-ag)

;;; Prelude personal setup/overwrites
(setq prelude-flyspell nil)         ;; Disable flyspell mode
(setq prelude-whitespace nil)       ;; Disable whitespace marking
(setq prelude-guru nil)             ;; Disable warning on arrow key navigation
(setq prelude-lisp-coding-hook nil) ;; Disable strict coding mode in lisp
(setq frame-title-format
      '("" (:eval (if (buffer-file-name)                                                    (abbreviate-file-name (buffer-file-name))"%b")))) ;; Change buffer title
(global-flycheck-mode 0)            ;; Disable flycheck mode globally
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; go directly to default etag
(defun find-tag-no-prompt ()
  "Jump to the tag at point without prompting"
  (interactive)
  (find-tag (find-tag-default)))
;; don't prompt when finding a tag
(global-set-key [?\s-.] 'find-tag-no-prompt)


;; disable highlight current line & visual effects on scroll
(global-hl-line-mode 0)
(beacon-mode 0)

;;;; smart-mode-line
(setq sml/theme 'light)
(setq size-indication-mode nil)
(setq-default    mode-line-format
		 '("%e"
		   mode-line-buffer-identification
		   sml/pos-id-separator
		   mode-line-front-space
		   mode-line-mule-info
		   mode-line-client
		   mode-line-modified
		   mode-line-remote
		   mode-line-frame-identification
		   sml/pos-id-separator
		   mode-line-misc-info
		   ;;mode-line-position
		   smartrep-mode-line-string
		   (vc-mode vc-mode)
		   sml/pre-modes-separator
		   mode-line-modes
		   mode-line-end-spaces
                   ))


(global-set-key [SunF37]       'compile-make)                 ; defined
(global-set-key [f12]          'compile-make)                 ; defined


(defun compile-make ()
  "Like 'compile', but uses compile-pkg"
  (interactive)
  ;(save-all-buffers)

  (if (projectile-project-p)
      (message "In a Project")
    (progn (let ((file-name (file-name-nondirectory buffer-file-name)))
	     (cond ((eq major-mode 'c-mode)
		    (compile (concat "cc -std=gnu99 " file-name " -o " file-name ".o; "))
		    "./" file-name ".o;")
		   ((eq major-mode 'c++-mode)
		    (compile (concat "g++ -std=c++11 " file-name " -o " file-name ".o; "))
		    "./" file-name ".o;")
		   (t (message "Not a recognized mode.")))))
    
    )
  )

(require 'helm-swoop)

;; Change keybinds to whatever you like
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
