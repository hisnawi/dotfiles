(deftheme rammari
  "Created 2017-01-23.")

(custom-theme-set-variables
 'rammari
 '(ansi-color-names-vector ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(custom-safe-themes (quote ("baefc6bdd26a387414b9e866e2d7de14fc2750cefd6cb2acd80018d138effb4c" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "213b1c4a9a132a5d366bd94833382b662a9b811858687d9b10b9eb9d05da01d2" default)))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map (quote ((20 . "#BC8383") (40 . "#CC9393") (60 . "#DFAF8F") (80 . "#D0BF8F") (100 . "#E0CF9F") (120 . "#F0DFAF") (140 . "#5F7F5F") (160 . "#7F9F7F") (180 . "#8FB28F") (200 . "#9FC59F") (220 . "#AFD8AF") (240 . "#BFEBBF") (260 . "#93E0E3") (280 . "#6CA0A3") (300 . "#7CB8BB") (320 . "#8CD0D3") (340 . "#94BFF3") (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

(custom-theme-set-faces
 'rammari
 '(font-lock-builtin-face ((((class color)) (:foreground "Black" :bold t))))
 '(font-lock-comment-face ((((class color)) (:foreground "DarkGreen" :bold t))))
 '(font-lock-constant-face ((((class color)) (:foreground "Black" :bold t))))
 '(font-lock-function-name-face ((((class color)) (:foreground "DarkBlue" :bold t))))
 '(font-lock-keyword-face ((((class color)) (:foreground "Maroon4" :bold t))))
 '(font-lock-preprocessor-face ((((class color)) (:foreground "Black" :bold t))))
 '(font-lock-string-face ((((class color)) (:foreground "DarkGreen" :bold t))))
 '(font-lock-type-face ((((class color)) (:foreground "Firebrick4" :bold t))))
 '(font-lock-variable-name-face ((((class color)) (:foreground "Black" :bold t))))
 '(font-lock-warning-face ((((class color)) (:foreground "Red" :bold t))))
 '(cursor ((t (:background "red3"))))
 '(mode-line-buffer-id ((t (:foreground "blue" :weight bold))))
 '(region ((t (:background "LightGoldenrod2" :foreground nil))))
 '(highlight ((t (:background "Gray85"))))
 '(helm-selection ((t (:background "lightblue")))) 
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :width normal :height 113 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "black" :background "Gray90" :stipple nil :inherit nil)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Special Modes - Start ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Add some highlighted keywords: Functions, Defines, Macros
;list of attributes:
;http://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Attributes.html

; Function for #if 0
(defun my-c-mode-font-lock-if0 (limit)
(save-restriction
(widen)
(save-excursion
  (goto-char (point-min))
  (let ((depth 0) str start start-depth)
    (while (re-search-forward "^\\s-*#\\s-*\\(if\\|else\\|endif\\)" limit 'move)
      (setq str (match-string 1))
      (if (string= str "if")
          (progn
            (setq depth (1+ depth))
            (when (and (null start) (looking-at "\\s-+0"))
              (setq start (match-end 0)
                    start-depth depth)))
        (when (and start (= depth start-depth))
          (c-put-font-lock-face start (match-beginning 0) 'font-lock-comment-face)
          (setq start nil))
        (when (string= str "endif")
          (setq depth (1- depth)))))
    (when (and start (> depth 0))
      (c-put-font-lock-face start (point) 'font-lock-comment-face)))))
nil)

; Function for #if 0
(defun my-c-mode-font-lock-iffixme (limit)
(save-restriction
(widen)
(save-excursion
  (goto-char (point-min))
  (let ((depth 0) str start start-depth)
    (while (re-search-forward "^\\s-*#\\s-*\\(if\\|else\\|endif\\)" limit 'move)
      (setq str (match-string 1))
      (if (string= str "if")
          (progn
            (setq depth (1+ depth))
            (when (and (null start) (looking-at "\\s-+FIXME"))
              (setq start (match-end 0)
                    start-depth depth)))
        (when (and start (= depth start-depth))
          (c-put-font-lock-face start (match-beginning 0) 'font-lock-comment-face)
          (setq start nil))
        (when (string= str "endif")
          (setq depth (1- depth)))))
    (when (and start (> depth 0))
      (c-put-font-lock-face start (point) 'font-lock-comment-face)))))
nil)

; C-mode - old method
(font-lock-add-keywords
 'c-mode
 '(
;   ("^#[ \t]*\\(ifdef\\|else\\|ifndef\\|if !?defined\\|if\\|elif\\|endif\\|ident\\).*$"        1 font-lock-constant-face)        ;#defines 
;   ("\\(^#[ \t]*define\\|^#[ \t]*include\\|^#[ \t]*undef\\).*$"                                1 font-lock-function-name-face)   ;other #s 
   ("\\<\\(int\\|void\\)\\>"                                                                   1 font-lock-type-face)            ;function pointers
   ("\\<\\([U]?Word[36][24]\\|[U]?Halfword\\|Bool\\|FPdouble\\|Byte\\)\\>"                     1 font-lock-type-face)            ;RUST specific
   ("\\<\\(if\\|else\\|else if\\|for\\|while\\|switch\\|default\\)\\>"                         1 font-lock-keyword-face)         ;C specific
   ("\\<\\([A-Z]*[a-z0-9_]+\\)\\([ \t]*\\)("                                                   1 font-lock-function-name-face)   ;functions()
;   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                         1 font-lock-reference-face)       ;MACROS()
;   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                        (1 '(:foreground "#ff1493" :weight bold) t)) ;MACROS()
   ("\\<\\([A-Z_][A-Z0-9_]*\\)\\>"                                                             1 font-lock-constant-face)        ;CONSTANTS
   )
 )
; C-mode - new method
(font-lock-add-keywords
 'c-mode
 '(
   ("^#[ \t]*\\(ifdef\\|else\\|ifndef\\|if !?[ \t]defined\\|if\\|elif\\|endif\\|ident\\).*$"  (1 font-lock-constant-face      t))   ;#defines
;   ("\\(^#[ \t]*define\\|^#[ \t]*include\\|^#[ \t]*undef\\).*$"                               (1 font-lock-function-name-face t))   ;other #s
   ("\\(^#[ \t]*define\\|^#[ \t]*include\\|^#[ \t]*undef\\).*$"                               (1 '(:foreground "#00008b" :weight bold) t))   ;other #s
   ("\\(^#[ \t]*if 0\\|^#[ \t]*if FIXME\\).*$"                                                (1 font-lock-warning-face       t))   ;#if 0 
   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                        (1 font-lock-reference-face t))       ;MACROS()
   (my-c-mode-font-lock-if0                                                                   (1 font-lock-comment-face prepend t)) ;#if 0 code
   (my-c-mode-font-lock-iffixme                                                               (1 font-lock-comment-face prepend t)) ;#if FIXME code
   )
 'prepend
 )

; C++-mode - old method
(font-lock-add-keywords
 'c++-mode
 '(
;   ("^#[ \t]*\\(ifdef\\|else\\|ifndef\\|if !?defined\\|if\\|elif\\|endif\\|ident\\).*$"        1 font-lock-constant-face)        ;#defines 
;   ("\\(^#[ \t]*define\\|^#[ \t]*include\\|^#[ \t]*undef\\).*$"                                1 font-lock-function-name-face)   ;other #s 
   ("\\<\\(int\\|void\\)\\>"                                                                   1 font-lock-type-face)            ;function pointers
   ("\\<\\([U]?Word[36][24]\\|[U]?Halfword\\|Bool\\|FPdouble\\|Byte\\)\\>"                     1 font-lock-type-face)            ;RUST specific
   ("\\<\\(if\\|else\\|else if\\|for\\|while\\|switch\\|default\\)\\>"                         1 font-lock-keyword-face)         ;C specific
   ("\\<\\([A-Z]*[a-z0-9_]+\\)\\([ \t]*\\)("                                                   1 font-lock-function-name-face)   ;functions()
   ("\\<\\([A-Z]*[a-zA-z0-9_]+\\)\\([ \t]*\\)::"                                              (1 '(:foreground "#9b30ff" :weight bold) t)) ;classes()
;   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                         1 font-lock-reference-face)       ;MACROS()
;   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                        (1 '(:foreground "#ff1493" :weight bold) t)) ;MACROS()
   ("\\<\\([A-Z_][A-Z0-9_]*\\)\\>"                                                             1 font-lock-constant-face)        ;CONSTANTS
   )
 )
; C++-mode - new method
(font-lock-add-keywords
 'c++-mode
 '(
   ("^#[ \t]*\\(ifdef\\|else\\|ifndef\\|if !?[ \t]defined\\|if\\|elif\\|endif\\|ident\\).*$"  (1 font-lock-constant-face      t))   ;#defines 
   ("\\(^#[ \t]*define\\|^#[ \t]*include\\|^#[ \t]*undef\\).*$"                               (1 font-lock-function-name-face t))   ;other #s
   ("\\(^#[ \t]*if 0\\|^#[ \t]*if FIXME\\).*$"                                                (1 font-lock-warning-face       t))   ;#if 0 
   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                        (1 font-lock-reference-face t))       ;MACROS()
   (my-c-mode-font-lock-if0                                                                   (1 font-lock-comment-face prepend t)) ;#if 0 code
   (my-c-mode-font-lock-iffixme                                                               (1 font-lock-comment-face prepend t)) ;#if FIXME code
   )
 'prepend
 )

; ASM-mode - old method
(add-to-list 'auto-mode-alist '("\\.s\\'" . asm-mode))
(font-lock-add-keywords
 'asm-mode
 '(
   ; The next two rules are for comments
   ("\\(^!.*\\)"                                                                               1 font-lock-comment-face)        ;! comments
   ("^[^#][^!]*\\(!.*\\)"                                                                      1 font-lock-comment-face)        ;to negated !defined
   
;   ("^#[ \t]*\\(ifdef\\|else\\|ifndef\\|if !?defined\\|if\\|elif\\|endif\\|ident\\).*$"        1 font-lock-constant-face)       ;#defines
;   ("\\(^#[ \t]*define\\|^#[ \t]*include\\|^#[ \t]*undef\\).*$"                                1 font-lock-function-name-face)  ;other #s 
   ("\\.\\b\\(register\\|section\\|type\\|org\\|data\\|text\\|word\\|
    char\\|global\\|align\\|skip\\|asciz\\)\\b"                                                1 font-lock-constant-face)       ;ASM specific
;   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                         1 font-lock-reference-face)      ;MACROS()
;   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                        (1 '(:foreground "#ff1493" :weight bold) t)) ;MACROS()
   ("\\b\\(\\ba\\|\\ba[,][a]?\\|bz\\|bn?e\\|bn?z\\|brn?z\\|brn?z[,][a]?\\|brl?z\\|bt\\|bf\\|
    bdn?z\\|bdn?zt\\|bdzf\\|ble\\|beq\\|bge\\|bgt?\\|bnl\\|bng\\|bso\\|bns\\|
    bnu\\|bc\\|blt?\\|ba\\)\\(l?a?\\|lrl?\\|ctrl?\\)\\b"                                       1 font-lock-function-name-face)  ;branches
   ("call[ \t]+\\([A-Za-z0-9_]*\\)"                                                            1 font-lock-function-name-face)  ;function calls 
   )
 )
; ASM-mode - new method
(font-lock-add-keywords
 'asm-mode
 '(
   ("\\(^#[ \t]*define\\|^#[ \t]*include\\|^#[ \t]*undef\\).*$"                               (1 font-lock-function-name-face t)) ;other #s
   ("^#[ \t]*\\(ifdef\\|else\\|ifndef\\|if !?[ \t]defined\\|if\\|elif\\|endif\\|ident\\).*$"  (1 font-lock-constant-face      t)) ;#defines 
   ("\\(^#[ \t]*if 0\\|^#[ \t]*if FIXME\\|^#[ \t]*if PORTME\\|^#[ \t]*ifdef FIXME\\|^#[ \t]*ifdef PORTME\\).*$" (1 font-lock-warning-face       t)) ;#if 0   
;   ("\\<\\([A-Z0-9_]*\\)\\([ \t]*\\)("                                                        (1 font-lock-reference-face     t)) ;MACROS()
   ("\\<\\([A-Z0-9_]*\\)("                                                                    (1 font-lock-reference-face     t)) ;MACROS()
   (my-c-mode-font-lock-if0                                                                   (1 font-lock-comment-face prepend t)) ;#if 0 code
   (my-c-mode-font-lock-iffixme                                                               (1 font-lock-comment-face prepend t)) ;#if FIXME code
   )
 'prepend
 )
;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Special Modes - End   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide-theme 'rammari)
