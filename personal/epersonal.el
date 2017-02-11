;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; My personal configs -*- emacs-lisp -*-
;;;;; Starter package: https://github.com/bbatsov/prelude
;;;;; Default gnu emacs24.4 - rammari  02/10/2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setting Keys - start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; note: s: Super key in MAC - > Meta
;;

;;f1;
;(global-set-key [f1]           'delete-other-windows)
;(global-set-key [S-f1]         'delete-window)
;(global-set-key [C-f1]         'toggle-scroll-bar)            ; defined
;(global-set-key [M-f1]         'sync-window-dual)             ; defined
;(global-set-key [C-M-f1]       'compare-windows)
;(global-set-key [S-C-M-f1]     'beginning-of-buffers)         ; defined
;(global-set-key [s-C-M-f1]     'objdump-thobp)                ; defined
;(global-set-key [A-C-M-f1]     'objdump-thobp)                ; defined
;(global-set-key [s-C-M-S-f1]   'objdump-file)                 ; defined
;(global-set-key [A-C-M-S-f1]   'objdump-file)                 ; defined
;
;;f2;
;(global-set-key [f2]           'other-window)
;(global-set-key [S-f2]         'split-window-vertically)
;(global-set-key [C-f2]         'split-window-horizontally)
;(global-set-key [s-C-M-f2]     'makelist-s5obp)               ; defined
;(global-set-key [A-C-M-f2]     'makelist-s5obp)               ; defined
;(global-set-key [s-C-M-S-f2]   'makelist-file)                ; defined
;(global-set-key [A-C-M-S-f2]   'makelist-file)                ; defined
;
;;f3;
;(global-set-key [f3]           'kill-this-buffer)
;(global-set-key [S-f3]         'kill-other-buffer)            ; defined
;(global-set-key [C-f3]         'kill-buffer)
;(global-set-key [C-M-f3]       'toggle-scroll-bar-killblame)  ; defined
;(global-set-key [s-C-M-f3]     'strip-newlines)               ; defined
;(global-set-key [A-C-M-f3]     'strip-newlines)               ; defined
;;(global-set-key [S-f3]         'save-buffer)
;
;;f4;
;(global-set-key [f4]           'gid)                          ; defined
;(global-set-key [C-f4]         'gid)                          ; defined
;(global-set-key [M-f4]         'gid-select)                   ; defined
;(global-set-key [C-M-f4]       'highlight-symbol-mode)        ; highlight-symbol.el
;(global-set-key [s-C-M-f4]     'highlight-symbol-at-point)    ; highlight-symbol.el
;(global-set-key [A-C-M-f4]     'highlight-symbol-at-point)    ; highlight-symbol.el
;(global-set-key [s-C-M-S-f4]   'highlight-symbol-remove-all)  ; highlight-symbol.el
;(global-set-key [A-C-M-S-f4]   'highlight-symbol-remove-all)  ; highlight-symbol.el
;
;;f5;
;(global-set-key [f5]           'occur-token-forward)          ; defined
;;(global-set-key [f5]           'search-token-forward)         ; defined
;(global-set-key [C-f5]         'search-token-backward)        ; defined
;(global-set-key [S-f5]         'highlight-symbol-occur)       ; highlight-symbol.el
;(global-set-key [M-f5]         'occur-token-forward-input)    ; defined
;(global-set-key [C-M-f5]       'register-set-or-jump)         ; defined
;;(global-set-key [f5]           'highlight-symbol-next)        ; highlight-symbol.el
;;(global-set-key [C-f5]         'highlight-symbol-prev)        ; highlight-symbol.el
;
;;f6;
;(global-set-key [f6]           'igrep-find-new)               ; defined - parent folder
;(global-set-key [C-f6]         'grep-curr-word-in-curr-dir)   ; defined - selected in current folder
;(global-set-key [M-f6]         'igrep-find)                   ; defined - all options
;(global-set-key [s-f6]         'igrep-find)                   ; defined - all options
;(global-set-key [A-f6]         'igrep-find)                   ; defined - all options
;(global-set-key [S-f6]         'win-swap)                     ; defined
;(global-set-key [C-M-f6]       'sync-window-mode)             ; defined
;
;;f7;
;(global-set-key [f7]           'my-next-error-wrapped)        ; defined - Move down in comp. window
;(global-set-key [C-f7]         'my-previous-error-wrapped)    ; defined - Move up in comp. window
;(global-set-key [S-f7]         'del-and-set-frame-width-80)   ; defined
;;(global-set-key [S-f7]         'win-resize-min-sm-vert-gap)   ; defined
;;(global-set-key [f7]           'shrink-window-horizontally)
;;(global-set-key [C-f7]         'find-file)
;
;;f8;
;(global-set-key [f8]           'win-resize-minimize-vert-gap) ; defined - far
;(global-set-key [C-f8]         'win-resize-enlarge-vert-gap)  ; defined - close
;(global-set-key [S-f8]         'balance-windows)
;;(global-set-key [f8]           'enlarge-window-horizontally)
;;(global-set-key [C-f8]         'view-file)
;
;;f9;
;(global-set-key [f9]           'sm-find-tag-other-window)     ; defined
;(global-set-key [S-f9]         'sm-find-tag)                  ; defined
;(global-set-key [C-f9]         'find-tag-other-window)
;(global-set-key [M-f9]         'find-tag-other-window)
;(global-set-key [M-S-f9]       'find-tag)                     ; defined
;(global-set-key [C-M-f9]       'compile-etags)                ; defined
;(global-set-key [C-M-S-f9]     'compile-etags-nodef)          ; defined
;
;;f10;
;(global-set-key [f10]          'revert-all-buffers)           ; defined
;(global-set-key [S-f10]        'view-file)
;(global-set-key [M-f10]        'rename-buffer)
;(global-set-key [C-f10]        'kdiff3)                       ; defined
;
;;f11;
;;Sun-f11
;(global-set-key [SunF36]       'ahg-log-cur-file-new)         ; defined - aHg.el
;(global-set-key [S-SunF36]     'compile-revdiff)              ; defined
;(global-set-key [C-SunF36]     'ahg-status)                   ; aHg.el
;(global-set-key [C-M-SunF36]   'monky-blame-current-file-full); defined - monky.el
;(global-set-key [C-M-S-SunF36] 'ahg-log-view-diff-ver)        ; defined - aHg.el
;;MAC-f11
;(global-set-key [f11]          'ahg-log-cur-file-new)         ; defined - aHg.el
;(global-set-key [S-f11]        'compile-revdiff)              ; defined
;(global-set-key [C-f11]        'ahg-status)                   ; aHg.el
;;(global-set-key [f11]          'compile-make-linux)           ; defined
;;(global-set-key [S-f11]        'compile-clean-linux)          ; defined
;;(global-set-key [C-f11]        'compile-load-linux)           ; defined
;(global-set-key [C-M-f11]      'monky-blame-current-file-full); defined - monky.el
;(global-set-key [C-M-S-f11]    'ahg-log-view-diff-ver)        ; defined - aHg.el
;
;;f12;
;;Sun-f12
;(global-set-key [SunF37]       'compile-make)                 ; defined
;(global-set-key [S-SunF37]     'compile-makeunix)             ; defined
;(global-set-key [C-SunF37]     'compile-makethobp)            ; defined
;(global-set-key [s-C-SunF37]   'copy-rustthobp)               ; defined
;(global-set-key [A-C-SunF37]   'copy-rustthobp)               ; defined
;(global-set-key [M-SunF37]     'compile-makes5obp)            ; defined
;(global-set-key [s-C-M-SunF37] 'shell-pullmake)               ; defined
;(global-set-key [A-C-M-SunF37] 'shell-pullmake)               ; defined
;(global-set-key [s-C-M-S-SunF37] 'shell-hgpull)               ; defined
;(global-set-key [A-C-M-S-SunF37] 'shell-hgpull)               ; defined
;;MAC-f12
;(global-set-key [f12]          'compile-make)                 ; defined
;(global-set-key [S-f12]        'compile-makeunix)             ; defined
;(global-set-key [C-f12]        'compile-makethobp)            ; defined
;(global-set-key [s-C-f12]      'copy-rustthobp)               ; defined
;(global-set-key [A-C-f12]      'copy-rustthobp)               ; defined
;(global-set-key [M-f12]        'compile-makes5obp)            ; defined
;(global-set-key [C-M-f12]      'compare-windows)
;(global-set-key [s-C-M-f12]    'shell-pullmake)               ; defined
;(global-set-key [A-C-M-f12]    'shell-pullmake)               ; defined
;(global-set-key [s-C-M-S-f12]  'shell-hgpull)                 ; defined
;(global-set-key [A-C-M-S-f12]  'shell-hgpull)                 ; defined
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setting keys - End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; My packages - Start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Make sure these packages are installed
(defvar rammari/packages
  '(
    ahg
    bind-key
    company-irony
    helm-swoop
    highlight-symbol
    igrep
    irony
    monky
    )
  )
(dolist (p rammari/packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My packages - End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Package Specific Configs - Start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; highlight-symbol
(add-hook 'c-mode-hook   (lambda () (highlight-symbol-mode 1)))
(add-hook 'c++-mode-hook (lambda () (highlight-symbol-mode 1)))
(add-hook 'asm-mode-hook (lambda () (highlight-symbol-mode 1)))

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

;;; helm-swoop
;; Change keybinds to whatever you like
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

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

;;; Projectile
;; Remap projectile useful functions
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)
(define-key projectile-mode-map [?\s-t] 'projectile-find-tag)
(define-key projectile-mode-map [?\s-a] 'helm-do-grep-ag)

;;; Prelude
;;  Personal setup/overwrites
(blink-cursor-mode 1)               ;; Cursor blinking
;; For shift-select region
(global-unset-key (vector (list 'shift 'left)))
(global-unset-key (vector (list 'shift 'right)))
(global-unset-key (vector (list 'shift 'up)))
(global-unset-key (vector (list 'shift 'down)))
(setq prelude-flyspell nil)         ;; Disable flyspell mode
(setq prelude-whitespace nil)       ;; Disable whitespace marking
(setq prelude-guru nil)             ;; Disable warning on arrow key navigation
(setq prelude-lisp-coding-hook nil) ;; Disable strict coding mode in lisp
(global-flycheck-mode 0)            ;; Disable flycheck mode globally
(global-hl-line-mode 0)             ;; Disable highlight current line
(beacon-mode 0)                     ;; Disable visual effects on scroll
(setq frame-title-format
      '("" (:eval (if (buffer-file-name)
		      (abbreviate-file-name
		       (buffer-file-name))"%b")))) ;; Change buffer title

;;; TRAMP
(when nil ;t
; Force a bash shell option
(add-to-list 'tramp-methods
  '("rssh"
    (tramp-login-program        "ssh")
    (tramp-login-args           (("-l" "%u") ("-p" "%p") ("%c")
				 ("-e" "none") ("-t" "-t") ("%h") ("/bin/bash")))
    (tramp-async-args           (("-q")))
    (tramp-remote-shell         "/bin/bash")
    (tramp-remote-shell-args    ("-c"))
    (tramp-gw-args              (("-o" "GlobalKnownHostsFile=/dev/null")
				 ("-o" "UserKnownHostsFile=/dev/null")
				 ("-o" "StrictHostKeyChecking=no")))
    (tramp-default-port         22)))

; Force a csh shell option
(add-to-list 'tramp-methods
  '("rcsh"
    (tramp-login-program        "ssh")
    (tramp-login-args           (("-l" "%u") ("-p" "%p") ("%c")
				 ("-e" "none") ("-t" "-t") ("%h") ("/bin/csh")))
    (tramp-async-args           (("-q")))
    (tramp-remote-shell         "/bin/csh")
    (tramp-remote-shell-args    ("-c"))
    (tramp-gw-args              (("-o" "GlobalKnownHostsFile=/dev/null")
				 ("-o" "UserKnownHostsFile=/dev/null")
				 ("-o" "StrictHostKeyChecking=no")))
    (tramp-default-port         22)))

;Settings
(setq tramp-default-method "sshx")
(setq tramp-default-user "rammari"
      tramp-default-host "asg1-usca-09") ;then conect with /sshx:::
(add-to-list 'Info-default-directory-list "~/.emacs.d/tramp/info/")
(setq password-cache-expiry nil)
(setq vc-handled-backends nil)
;; Backup (file~) disabled
(add-to-list 'backup-directory-alist (cons tramp-file-name-regexp nil))
;debug
;(setq tramp-verbose 10)
) ;end when

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package Specific Configs - End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General Emacs Configs - start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Set default font
(set-face-font 'default "-unknown-DejaVu Sans Mono-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")

;; General configs
(setq auto-save-interval           1000)           ; default is 300
(setq default-major-mode           'text-mode)     ; default is fundamental-mode
(setq home (expand-file-name       "~"))           ; used in functions below (mode line)
;(setq search-highlight             t)              ; Incremental search highlights the current match.
(setq transient-mark-mode          t)              ; Region will be activated when mark is active
(setq truncate-lines               t)              ; Do not wrap screen lines
(setq comint-scroll-to-bottom-on-input  t)
(setq comint-scroll-show-maximum-output t)
(setq default-truncate-lines t)

;; Disable minimizing window key binding
(global-set-key "\C-x\C-z" nil)

;; Search with case insensitive
(setq case-fold-search nil)

;; Files configs
(setq revert-without-query '(".log"))
(defalias 'yes-or-no-p 'y-or-n-p)
(setq vc-follow-symlinks t) ; Follow symlinks to the linked file

;; Ask opening files more than 100M not less
(setq large-file-warning-threshold 100000000)

;; Directory configs
(dired "./")                                       ; Start emacs with current directory
(setq list-directory-verbose-switches "")
(setq dired-listing-switches "-al")                ;Sort dired list alphabetically '-alt by date'
(if (equal default-directory "/") (setq default-directory "~/"))

;; Enable mouse scrolling
(setq scroll-step 1)  ;; Scroll by 1 line rather than half-screen
(mouse-wheel-mode t)

;; scroll bar position
(set-scroll-bar-mode 'left)   ; replace 'left with 'right to place it to the right

;; Allow marking of the region using cursor keys and the shift key and other stuff
;(pc-selection-mode)

;; Indentation-3
(setq indent-tabs-mode nil)        ; Spaces for indentation
(add-hook 'c-mode-hook   (lambda () (setq c-basic-offset 3)))
(add-hook 'c++-mode-hook (lambda () (setq c-basic-offset 3)))

;; Switch-Case indentation-3
(c-set-offset 'case-label '+)

;; To delete a selected region
(delete-selection-mode t)

;; Avoid the annoying startup message.
(setq inhibit-startup-message t)

;; Add new line by default to end of buffer
(setq next-line-add-newlines nil)

;; Mode Line
(setq line-number-mode t)            ; display line number in mode line
(setq column-number-mode t)          ; display column numbers in mode line
(make-variable-buffer-local 'abbreviated-filname)

;; Dont resize minibuffer automatically
(setq resize-mini-windows nil)

;; Show function name in the modeline (the status-bar).
(add-hook 'c-mode-common-hook   (lambda () (which-function-mode t)))
(add-hook 'c++-mode-common-hook (lambda () (which-function-mode t)))

;; Set wrapping to the next line
(setq-default fill-column 72)
;; Auto wrap to the next line
(setq auto-fill-mode 1)
;; Turn on auto wrap for text mode only
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; next-error recenter
(setq next-error-recenter 10)

;; Enable backup/tilda files into a separate folder
(setq make-backup-files t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; Prepare the compile command to search eTags
(setq compile-command "gid ")

;; Stop eshell from asking to save history on exit
(setq eshell-ask-to-save-history 'always)

;; custom set variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(clean-buffer-list-delay-general 1)
 '(current-language-environment "English")
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "943bff6eada8e1796f8192a7124c1129d6ff9fbd1a0aed7b57ad2bf14201fdd4" default)))
 '(ecb-options-version "2.40")
 '(global-font-lock-mode t nil (font-lock))
 '(ibuffer-expert t)
 '(ibuffer-fontification-alist (quote ((10 buffer-read-only font-lock-constant-face) (15 (and buffer-file-name (string-match ibuffer-compressed-file-name-regexp buffer-file-name)) font-lock-doc-face) (20 (string-match "^*" (buffer-name)) font-lock-preprocessor-face) (25 (and (string-match "^ " (buffer-name)) (null buffer-file-name)) italic) (30 (memq major-mode ibuffer-help-buffer-modes) font-lock-comment-face) (35 (eq major-mode (quote dired-mode)) (:foreground "goldenrod4" :weight bold)) (40 (eq major-mode (quote c-mode)) font-lock-function-name-face) (45 (eq major-mode (quote asm-mode)) font-lock-keyword-face) (50 (eq major-mode (quote text-mode)) font-lock-warning-face) (55 (string-match ".*ras.*" (buffer-name)) font-lock-comment-face) (60 (string-match ".*io_mem.*" (buffer-name)) font-lock-comment-face) (65 (eq major-mode (quote cperl-mode)) cperl-hash-face))))
 '(message-required-mail-headers (quote (Message-ID (optional . X-Mailer))))
 '(require-final-newline t)
 '(safe-local-variable-values (quote ((c-indentation-style . bsd))))
 '(show-paren-mode t nil (paren))
; Indent for assembly tab == 3
 '(tab-stop-list (quote (3 9 11 15 19 23 27 31 35 39 43 47 51 55 59 63 67 71 75 79 83 87 91 95 99 103 107 111 115 119)))
; If you want tab == 4
; '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))))
 '(transient-mark-mode t)
 '(truncate-lines t)
 )

;; Key binding for M-x goto-line
(global-set-key [kp-multiply]    'goto-line)
(global-set-key "\M-g"           'goto-line)

;; Search backwards
(define-key isearch-mode-map "\C-\M-s" 'isearch-repeat-backward)

;; Remap page down
(global-set-key (kbd "S-C-v")   'scroll-down-command)

;; Undo
(global-set-key "\C-z"            'undo)

; Make Emacs use "newline-and-indent" when you hit the Enter key so
; that you don't need to keep using TAB to align yourself when coding.
; This is akin to setting autoindent in vi.
(global-set-key "\C-m" 'newline-and-indent)

;; If at beginning of a line, don't make me C-k twice.
(setq kill-whole-line t)

;; Copy from here till end of line
(global-set-key "\C-c\C-k" "\C- \C-e\M-w")

;; Repurpose Insert key
(global-set-key [insert]      'nil)            ; undefine insert
(global-set-key [S-insert]    'overwrite-mode) ; [Ins]

;; smart-mode-line
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General Emacs Configs - End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Platform Specific - Start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Get current system's name
(defun insert-system-name()
(interactive)
"Get current system's name"
(insert (format "%s" system-name)))

;; Get current system type
(defun insert-system-type()
(interactive)
"Get current system type"
(insert (format "%s" system-type)))

;; Check if system is Unix
(defun system-type-is-unix ()
(interactive)
"Return true if system is Unix-based"
(string-equal system-type "usg-unix-v"))

;; Check if system is Darwin/Mac OS X
(defun system-type-is-darwin ()
(interactive)
"Return true if system is darwin-based (Mac OS X)"
(string-equal system-type "darwin"))

;; Check if system is GNU/Linux
(defun system-type-is-gnu ()
(interactive)
"Return true if system is GNU/Linux-based"
(string-equal system-type "gnu/linux"))

;; Unix specific ;;
(if (system-type-is-unix)
    (progn
      ;;Fonts
      ;; Set default height/width
      (add-to-list 'default-frame-alist '(width . 180))
      (add-to-list 'default-frame-alist '(height . 70))
      (if (file-exists-p "./headers") (progn (find-file "./headers") (beginning-of-line)))
      ;; Split window
      (split-window-horizontally)
      (if (file-exists-p "../source") (progn (find-file "../source") (beginning-of-line)))
      )
  )
;; MAC specific ;;
(if (system-type-is-darwin)
    (progn
      ;;Fonts
      (set-face-font 'default "-*-Interface User-Medium-R-*-*-15-120-*-*-*-*-*-*")
      ;; Set default height/width
      (add-to-list 'default-frame-alist '(height . 70))
      (add-to-list 'default-frame-alist '(width . 90))
      (setq auto-save-default nil)   ;; For MAC
      (global-set-key [kp-delete] 'delete-char) ; sets fn-delete to be right-delete
      ;(setq mac-option-modifier 'alt) ;serves as Meta
      ;(setq mac-command-modifier 'meta) ;I keep meta for top/bottom page
      ;(setq mac-command-key-is-meta nil)
      )
  )
;; Linux specific ;;
(if (system-type-is-gnu)
    (progn
      ;;Fonts
      (set-default-font "Monospace-11")
      ;; Set default height/width
      (add-to-list 'default-frame-alist '(height . 55))
      (add-to-list 'default-frame-alist '(width . 80))
      ;;Disable message:buffer changed on disk
      (defun ask-user-about-supersession-threat (fn)
	"blatantly ignore files that changed on disk")
      (defun ask-user-about-lock (file opponent)
	"always grab lock" t))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Platform Specific - End
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Special Key Bindings - start;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Go directly to default etag
(defun find-tag-no-prompt ()
  "Jump to the tag at point without prompting"
  (interactive)
  (find-tag (find-tag-default)))
;; don't prompt when finding a tag
(global-set-key [?\s-.] 'find-tag-no-prompt)

;; Strip newlines
(defun strip-newlines ()
  "Strip newlines (^M) from a buffer"
  (interactive)
  (replace-string "" "" nil nil nil)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Sync both windows - used for Mercurial Blame buffer
(defface sync-window-face ;; originally copied from font-lock-function-name-face
  '((((class color) (min-colors 88) (background light)) (:foreground "Yellow"       :background "Blue1"))
    (((class color) (min-colors 88) (background dark))  (:foreground "Red"          :background "LightSkyBlue"))
    (((class color) (min-colors 16) (background light)) (:foreground "Blue"         :background "Yellow"))
    (((class color) (min-colors 16) (background dark))  (:foreground "LightSkyBlue" :background "Yellow"))
    (((class color) (min-colors 8))                     (:foreground "blue"         :bold t))
    (t (:bold t)))
  "Face used to highlight regions in `sync-window-mode' slaves."
  :group 'sync-window)

(defvar sync-window-overlay nil
  "Overlay for current master region in `sync-window-mode' slaves.")
(make-variable-buffer-local 'sync-window-overlay)

(defun sync-window-cleanup ()
  "Clean up after `sync-window-mode'."
  (interactive)
  (if (overlayp sync-window-overlay)
      (progn
    (delete-overlay sync-window-overlay)
    (setq sync-window-overlay nil))
    (remove-overlays (point-min) (point-max) 'sync-window-slave t)))

;; No highlighted text Xsync-window -> faster
(defun Xsync-window (&optional display-start)
  "Synchronize point position other window in current frame.
Only works if there are exactly two windows in the active wrame not counting the minibuffer."
  (interactive)
  (when (= (count-windows 'noMiniBuf) 2)
    (let ((p (line-number-at-pos))
      (start (line-number-at-pos (or display-start (window-start))))
      (vscroll (window-vscroll)))
      (other-window 1)
      (goto-char (point-min))
      (setq start (line-beginning-position start))
      (forward-line (1- p))
      (set-window-start (selected-window) start)
      (set-window-vscroll (selected-window) vscroll)
      (other-window 1)
      (unless display-start
	(redisplay t))
;      (other-window 1)       ;R-m
;      (mercury-blame-resize) ;R-m
;      (other-window 1)       ;R-m
      )))

(define-minor-mode sync-window-mode
  "Synchronized view of two buffers in two side-by-side windows."
  :group 'windows
  :lighter " ⇕"
  (unless (boundp 'sync-window-mode-active) ;Both
    (setq sync-window-mode-active nil))     ;Both
  (if sync-window-mode
      (progn
        (add-hook 'post-command-hook 'sync-window-wrapper 'append t)
        (add-to-list 'window-scroll-functions 'sync-window-wrapper)
        (Xsync-window)
	(scroll-bar-mode -1) ;R-m
	)
    (remove-hook 'post-command-hook 'sync-window-wrapper t)
    (setq window-scroll-functions (remove 'sync-window-wrapper window-scroll-functions))
    (scroll-bar-mode 1)      ;R-m
    ))

(defun sync-window-wrapper (&optional window display-start)
  "This wrapper makes sure that `sync-window' is fired from `post-command-hook'
only when the buffer of the active window is in `sync-window-mode'."
  (unless sync-window-mode-active       ;Both
    (setq sync-window-mode-active t)    ;Both
    (with-selected-window (or window (selected-window))
      (when sync-window-mode
	(sit-for 0)                     ;Both
        (Xsync-window display-start)))
    (setq sync-window-mode-active nil)) ;Both
  )

(defun sync-window-dual ()
  "Toggle synchronized view of two buffers in two side-by-side windows simultaneously."
  (interactive)
  (if (not (= (count-windows 'noMiniBuf) 2))
      (error "restricted to two windows")
    (let ((mode (if sync-window-mode 0 1)))
      (sync-window-mode mode)
      (with-selected-window (selected-window)
        (other-window 1)
        (sync-window-mode mode)))))

; To resize window till ":"
(defvar mercury-blame-resize-min 5)

(defun mercury-blame-resize ()
  "Resize mercury blame window to blame string at point only."
  (interactive) ;; for debugging
  (condition-case err
      (enlarge-window (- (max mercury-blame-resize-min (save-excursion
                  (beginning-of-line)
                  (skip-chars-forward "^:\n")))
             (window-width) -1)
              'horizontal) (error)))

;; Go to same line number in the second buffer
(global-set-key (kbd "C-c l")
  (lambda ()
    (interactive)
    (goto-line (line-number-at-pos) (window-buffer (next-window)))))

;; Mark ring using a register
(defun register-set-or-jump ()
  (interactive)
  (let ((pos (get-register :saved-pos)))
    (if (markerp pos)
        (progn
          ;; Saved position found.
          ;; Jump there and clear the register.
          (jump-to-register :saved-pos)
          (set-register :saved-pos nil)
          (message "Jumped to saved position"))
      ;; No saved position available.
      ;; Save point to the register.
      (point-to-register :saved-pos)
      (message "Saved position to register"))))

(defun register-set1 ()
  (interactive)
  ;; No saved position available.
  ;; Save point to the register.
  (point-to-register :saved-pos1)
  (message "Saved position to register 1"))
(global-set-key (kbd "C-M-)")  'register-set1)

(defun register-jump1 ()
  (interactive)
  ;; Saved position found.
  ;; Jump there and clear the register.
  (jump-to-register :saved-pos1)
  (message "Jumped to saved position 1"))
(global-set-key (kbd "C-M-0")  'register-jump1)

(defun register-set2 ()
  (interactive)
  ;; No saved position available.
  ;; Save point to the register.
  (point-to-register :saved-pos2)
  (message "Saved position to register 2"))
(global-set-key (kbd "C-M-(")  'register-set2)

(defun register-jump2 ()
  (interactive)
  ;; Saved position found.
  ;; Jump there and clear the register.
  (jump-to-register :saved-pos2)
  (message "Jumped to saved position 2"))
(global-set-key (kbd "C-M-9")  'register-jump2)

(defun register-set3 ()
  (interactive)
  ;; No saved position available.
  ;; Save point to the register.
  (point-to-register :saved-pos3)
  (message "Saved position to register 3"))
(global-set-key (kbd "C-M-*")  'register-set3)

(defun register-jump3 ()
  (interactive)
  ;; Saved position found.
  ;; Jump there and clear the register.
  (jump-to-register :saved-pos3)
  (message "Jumped to saved position 3"))
(global-set-key (kbd "C-M-8")  'register-jump3)


;; Referesh all open buffers from Disk
(defun revert-all-buffers ()
  "Refreshes all open buffers from their respective files"
  (interactive)
  (let* ((list (buffer-list))
	 (buffer (car list)))
    (while buffer
      (when (buffer-file-name buffer)
	(progn
	  (set-buffer buffer)
	  (revert-buffer t t t)))
      (setq list (cdr list))
      (setq buffer (car list))))
  (message "Refreshing open files"))

;; Save all buffers - Dont confirm
(defun save-all-buffers ()
  (interactive)
  (save-some-buffers 1))
(global-set-key "\C-xs" 'save-all-buffers)

;; Kill other buffer
(defun kill-other-buffer ()
  (interactive)
  (other-window 1)
  (kill-this-buffer)
  (other-window 1))

;; Moving a line up or down
(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg))
        (forward-line -1))
      (move-to-column column t)))))

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))
(global-set-key [s-M-up]   'move-line-up)

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))
(global-set-key [s-M-down] 'move-line-down)

(defun flip-text-to-eol (&optional arg)
  "Flip the text from point to the end of the current line with the text
in the next line from the same column to the end of the next line.
With a prefix arg, flip text with the line above the current."
  (interactive "p")
  (save-excursion
    (let ((tt (delete-and-extract-region (point) (point-at-eol)))
          (c (current-column)))
      (forward-line arg)
      (move-to-column c)
      (insert tt)
      (let ((ot (delete-and-extract-region (point) (point-at-eol))))
        (forward-line (- arg))
        (goto-char (point-at-eol))
        (insert ot)
	))
    )
  (previous-line (- arg))
  )

(defun move-subtext-down (arg)
  (interactive "*p")
  (flip-text-to-eol arg))
(global-set-key [s-M-S-down] 'move-subtext-down)

(defun move-subtext-up (arg)
  (interactive "*p")
  (flip-text-to-eol (- arg)))
(global-set-key [s-M-S-up]   'move-subtext-up)

;;Scrolling..........................
;; Scroll one line up and down
(defun scroll-up-one-line ()
  (interactive)
  (scroll-up 1))
(global-set-key [kp-add]         'scroll-up-one-line)
(global-set-key (kbd "s-C-M-n")  'scroll-up-one-line)

(defun scroll-down-one-line ()
  (interactive)
  (scroll-down 1))
(global-set-key [kp-subtract]    'scroll-down-one-line)
(global-set-key (kbd "s-C-M-p")  'scroll-down-one-line)

;; Scroll 12 lines up and down
(defun scroll-up-twelve-lines ()
  (interactive)
  (scroll-down 12))
(global-set-key [C-M-up]       'scroll-up-twelve-lines)
(global-set-key (kbd "C-M-p")  'scroll-up-twelve-lines)

(defun scroll-down-twelve-lines ()
  (interactive)
  (scroll-up 12))
(global-set-key [C-M-down]     'scroll-down-twelve-lines)
(global-set-key (kbd "C-M-n")  'scroll-down-twelve-lines)

;; Scroll 24 lines up and down
(defun scroll-up-24-lines ()
  (interactive)
  (scroll-down 24))
(global-set-key [S-C-M-up]       'scroll-up-24-lines)
(global-set-key (kbd "S-C-M-p")  'scroll-up-24-lines)

(defun scroll-down-24-lines ()
  (interactive)
  (scroll-up 24))
(global-set-key [S-C-M-down]     'scroll-down-24-lines)
(global-set-key (kbd "S-C-M-n")  'scroll-down-24-lines)

; Smooth scrolling
(defun scroll-one-down ()
  (interactive)
  (scroll-down 1)
  (previous-line)
)
(global-set-key [(control ?,)] 'scroll-one-down)

(defun scroll-one-up ()
  (interactive)
  (scroll-up 1)
  (next-line)
)
(global-set-key [(control ?.)] 'scroll-one-up)

;;Moving............................
;;1.Move cursor X lines up or down
(defun six-lines-up ()
  "Move cursor 6 lines up == C-6 C-p"
  (interactive)
  (previous-line 6))
(bind-key* [M-up]         'six-lines-up)

(defun twelve-lines-up ()
  "Move cursor 12 lines up == C-12 C-p"
  (interactive)
  (previous-line 12))
(bind-key* [S-M-up]       'twelve-lines-up)

(defun six-lines-down ()
  "Move cursor 6 lines down == C-6 C-n"
  (interactive)
  (next-line 6))
(bind-key* [M-down]       'six-lines-down)

(defun twelve-lines-down ()
  "Move cursor 12 lines down == C-12 C-n"
  (interactive)
  (next-line 12))
(bind-key* [S-M-down]     'twelve-lines-down)

;;2.Move cursor X characters left or right
(defun six-chars-right ()
  "Move cursor 6 chars right == C-6 C-f"
  (interactive)
  (forward-char 6))
(global-set-key [M-right]      'six-chars-right)
(defun twelve-chars-right ()
  "Move cursor 12 chars right == C-12 C-f"
  (interactive)
  (forward-char 12))
(global-set-key [S-M-right]    'twelve-chars-right)
(defun six-chars-left ()
  "Move cursor 6 chars left == C-6 C-b"
  (interactive)
  (backward-char 6))
(global-set-key [M-left]       'six-chars-left)
(defun twelve-chars-left ()
  "Move cursor 12 chars left == C-12 C-b"
  (interactive)
  (backward-char 12))
(global-set-key [S-M-left]     'twelve-chars-left)

;; Paging up/down
(global-set-key [C-up]         'scroll-down-command)
(global-set-key [C-down]       'scroll-up-command)

;; Navigate symbols
(bind-key* [C-M-right]        'highlight-symbol-next)        ; highlight-symbol.el
(bind-key* [C-M-left]         'highlight-symbol-prev)        ; highlight-symbol.el

;; Kill entire line cursor is on
(defun kill-entire-line ()
  "Kill the whole line that point is on.(eam)"
  (interactive)
  (forward-line 1)
  (let ((end (point)))
  (forward-line -1)
  (kill-region (point) end)))
(global-set-key "\C-x\C-d"       'kill-entire-line)

;; Duplicate entire line
(defun my-c-mode-common-hook ()
  (define-key c-mode-base-map "\C-c\C-d" nil)    ; unbind c-hungry-delete-forward
  (define-key c-mode-base-map "\C-c\C-c" nil)    ; unbind C-c C-c
  )
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(defun my-c++-mode-common-hook ()
  (define-key c++-mode-base-map "\C-c\C-d" nil)    ; unbind c++-hungry-delete-forward
  (define-key c++-mode-base-map "\C-c\C-c" nil)    ; unbind C-c C-c
  )
(add-hook 'c++-mode-common-hook 'my-c++-mode-common-hook)

(defun paste-line ()
  "Go to beginning of next line, then yank.(eam)"
  "Note: this yanks whatever was last killed, whether it was a line,"
  "      multiple lines, or part of a line."
  (interactive)
  (forward-line 1)
  (yank))
(defun duplicate-entire-line ()
  "Copy the whole line that point is on.(eam)"
  (interactive)
  (forward-line 1)
  (let ((end (point)))
  (forward-line -1)
  (copy-region-as-kill (point) end)
  (paste-line)))
(global-set-key "\C-c\C-d"       'duplicate-entire-line)
(global-set-key "\C-c\C-c"       'duplicate-entire-line)

;; eTAGS - Skip default option for found tags
(defun sm-find-tag ()
  (interactive)
  (find-tag (funcall (or find-tag-default-function
                         (get major-mode 'find-tag-default-function)
                         'find-tag-default)))
  (recenter 10)
  )

(defun sm-find-tag-other-window ()
  (interactive)
  (let ((tag (funcall (or find-tag-default-function
                          (get major-mode 'find-tag-default-function)
                          'find-tag-default))))
    (if tag
        (find-tag-other-window
         (replace-regexp-in-string "[<>]" "" (regexp-quote tag)))))
  (recenter 10)
  )

(defun sm-find-tag-other-window2 ()
  (interactive)
  (find-tag-other-window (funcall (or find-tag-default-function
                         (get major-mode 'find-tag-default-function)
                         'find-tag-default)))
  (recenter 10)
  )

;; Swapping current with other windows
(defun buf-move-left ()
  (interactive)
  (let* ((other-win (windmove-find-other-window 'left))
	 (buf-this-buf (window-buffer (selected-window))))
    (if (null other-win)
        (error "No left split")
      ;; swap top with this one
      (set-window-buffer (selected-window) (window-buffer other-win))
      ;; move this one to top
      (set-window-buffer other-win buf-this-buf)
      (select-window other-win))))

(defun buf-move-right ()
  (interactive)
  (let* ((other-win (windmove-find-other-window 'right))
	 (buf-this-buf (window-buffer (selected-window))))
    (if (null other-win)
        (error "No right split")
      ;; swap top with this one
      (set-window-buffer (selected-window) (window-buffer other-win))
      ;; move this one to top
      (set-window-buffer other-win buf-this-buf)
      (select-window other-win))))

(require 'windmove)
(defun win-swap () "Swap windows using buffer-move.el"
  (interactive)
  (if (null (windmove-find-other-window 'right))
      (buf-move-left) (buf-move-right))
  )

(defun win-swap-if-left () "if on left swap"
  (interactive)
  (if (null (windmove-find-other-window 'left))
      (buf-move-right))
  )

(defun set-frame-width-80 ()
  (interactive)
  (set-frame-width (selected-frame) 80))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Special Key Bindings - end  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;Make & Mercurial Support - start;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

















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






;;;;;;;;;;;;;
;;  Notes  ;;
;===========;
;
; *Helpful Notes*
;----------------
; To help with lagginess on big files with many comments, disabole font-lock-mode
; M-x font-lock-mode
;
; To load a specific init file emacs -q -l ~/.emacs-alt
;
; ESC-! allows you to execute a shell command
;
; Disable auto-wrap "toggle it": M-x auto-fill-mode
;
; C<SPC> set mark, C<U>,C<SPC> return to mark
; Region commands:
; Format paragraphs: M-q
; Indent : C-M-\
; Comment: C-c C-c ,  uncomment C-u C-c C-c
; Comment/uncomment (region) : M-;
; Align  : C-u M-x align
; Replace : M-% ->  y:replace and go to next , n    :don't replace and go to next
;                   !:replace all, ,:replace , del  :skip and go to next
;                 C-r:recursive edit mode    , C-M-c:exit recursive edit mode
; Uppercase : C-x C-u , Lowercase : C-x C-l
;
; isearch history : C-s M-p/M-n
; remove spaces from this line to above one : M-^ , to below: C-u M-^
; Emacs Shell : M-x eshell
; Manipulate rectangles: C-x r "t:insert" "o:open" "k:kill" "y:yank"
; C-u [len] [character] will place len characters on a line
; C-x C-v revert changes to last saved version.
; In directory view : c:will copy and g:will refresh d:delete x:excute deletion
;                     s:switch between date and alpha order ^:parent directory
; M-g : goto line
; C-l : center buffer to cursor position
; In C: C-M-a:Beginning of a function, C-M-e:End of a function
; C-M-f C-M-b to find forward and backward matching brackets
;
; While using (next-error) hit C-u at end of results to reset from beginning
;
; Use Emacs Calculator with "M-x calc" :
; d r "choose base" 16/0/2
; to do 2+1 enter: 2 enter 1 enter +
;
; Printing alias: mp -l -s "\!*" <\!* | lp
;
; enriched-mode:
;  Alt-o d default
;  Alt-o b bold
;  Alt-o i italic
;  Alt-o I italic+bold
;  Alt-o u underline
;					;
; Moving in emacs C-f:forward C-b:backward C-p:up C-n:down
;                 M-f:forward word M-b:backward word
;                 C-d:f.delete M-v:pageup C-v:pagedown
;                 M-<:beginning of buffer M->:end of buffer
;                 C-a:beginning of line C-e:end of line
;
; AHG: In status mode: = diff file, o goto file, D diff all,
;                      space mark files, U revert marked/all files
;
;
; Searching IDs:   1. mkid in the highest directory path - do this on every pull
;                     Or to trim directories:
;alias mkidrust  'mkid ' look up MKALL
;                  2. M-x compile or F4
;                  3. gid 'search'  it is an EXACT MATCH
;
; Searching etags: 1. etags in the highest directory and include all files
;alias etagsrust 'etags ...' look up MKALL
;                  2. find-tag while pointing at the tag in your file
;
;alias mkall 'echo "making IDs";mkidrust;echo "making TAGs";etagsrust;echo "Done"'
;
; Build etags: find . -type f -iname "*.[ch]" | etags -
;
;~/.emacs.d/diredful-conf.el file:
;("special" "s-files" "txt-files" "h-files" "c-files")
;(("special" (:foreground "forestgreen") ".*ras.* io_mem.*" t nil nil nil) ("s-files" (:foreground "maroon") "s" nil nil nil nil) ("txt-files" (:foreground "red") "txt" nil nil nil nil) ("h-files" (:foreground "blue") "h" nil nil nil nil) ("c-files" (:foreground "blue") "c" nil nil nil nil))

; **Solaris VNC options:
;  *Keyboard Layout Options:
;  -Alt/Win Key behavior: Alt is mapped to Right Win, Super to Menu (At work)
;                         Meta is mapped to Left Win (At home)
;  -Key sequence to kill X server: Tick
;  -Miscellaneous compatibility options: Special key (Ctrl+Alt+<key>) handled in a server
;  *Keyboard Shortcuts:
;  -Switch to workspace on left of current workspace:  Ctrl+alt+Mod4+[
;  -Switch to workspace on right of current workspace: Ctrl+alt+Mod4+]
;
;;For debug:
;(setq debug-on-error t)
; To add/edit/del to diredful: M-x diredful-add, M-x diredful-edit, M-x diredful-del
;;
;;; To manually update prelude and the packages installed:
;   1.Update all bundled packages:
;     Just run M-x package-list-packages RET U x.
;   2.Update Prelude's code:
;     cd ~/.emacs.d
;     git pull
