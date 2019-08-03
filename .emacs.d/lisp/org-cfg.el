;;;;;;;;;;;;;;;ORG-MODE配置;;;;;;;;;;;;;;;;;;;

(defun org-mode-my-init ()
  ; ......
  ;; 让不同级别的标题采用不同大小的字体---do not work in terminal
  (set-face-attribute 'org-level-1 nil :height 1.6 :bold t)
  (set-face-attribute 'org-level-2 nil :height 1.4 :bold t)
  (set-face-attribute 'org-level-3 nil :height 1.2 :bold t)

  ;; 不关闭中文输入法，输入章节标题里面的星号
  (define-key org-mode-map (kbd "×") (kbd "*"))
  (define-key org-mode-map (kbd "－") (kbd "-")))

(add-hook 'org-mode-hook 'org-mode-my-init)

;;设置Org-mode缩进
(setq org-startup-indented t)

;; 中英文字体混排时的表格对齐问题
;(set-default-font "DejaVu Sans Mono 10")
;(set-fontset-font "fontset-default" 'unicode"WenQuanYi Bitmap Song 12") ;;for linux
;(set-fontset-font "fontset-default" 'unicode "宋体 12") ;; for windows

;; 代码按语法高亮
(setq org-src-fontify-natively t)

;; iimage mode 显示图片
(autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
(autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)

;; 时间戳、日志记录
(setq org-log-done 'time)
;(setq org-log-done 'note)

;; 时间戳记录到抽屉中而不是标题的下方
(setq org-log-into-drawer t)

;; 设置TODO关键字
(setq org-todo-keywords
      '((sequence "PENDING(p!)" "TODO(t!)" "STARTED(s!)" "NEXT(n!)" "REVIEW(r!)"  "|" "DONE(d!)" "ABORT(a@/!)")))
;; 设置不同关键字的外观
(setq org-todo-keyword-faces
      '(("PENDING" .   (:background "Green"      :foreground "white"))
	("TODO"    .   (:background "Purple"     :foreground "white"))
	("STARTED" .   (:background "Blue"       :foreground "white"))        
        ("NEXT"    .   (:background "red"        :foreground "black"))
	("REVIEW"  .   (:background "pink"      :foreground "black"))
	("DONE"    .   (:background "steelblue"  :foreground "black"))
	("ABORT"   .   (:background "Brown"      :foreground "lavender"))))

;; 优先级范围和默认任务的优先级
(setq org-highest-priority ?A)
(setq org-lowest-priority  ?E)
(setq org-default-priority ?E)
;; 优先级醒目外观
(setq org-priority-faces
      '((?A . (:background "red"          :foreground "white"      :weight bold))
	(?B . (:background "DarkOrange"   :foreground "white"      :weight bold))
	(?C . (:background "yellow"       :foreground "DarkGreen"  :weight bold))
	(?D . (:background "DodgerBlue"   :foreground "black"      :weight bold))
	(?E . (:background "SkyBlue"      :foreground "black"      :weight bold))))

;; 标签设置
(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ("@laptop" . ?l)))
;; 设置标签的外观
;;org-tag-faces


;; 可以设置忽略一个时间提醒
(setq org-agenda-skip-scheduled-delay-if-deadline t)



;; GTD 收集项目的模板设置
;(org-remember-insinuate)
(setq org-directory "~/GTD/")
(setq org-remember-templates '(
                               ("Task" ?t "** TODO %? %t\n %i\n %a" "~/GTD/inbox.org" "Tasks")
                               ("Book" ?c "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Book")
                               ("Calendar" ?c "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Calender")
                               ("Project" ?p "** %? %t\n %i\n %a" "~/GTD/inbox.org" "Project")))
(setq org-default-notes-file (concat org-directory "~/inbox.org"))


;; 设置捕获目录
;;(setq org-default-notes-file (concat org-directory "~/GTD/Org/ideaCapture"))
(define-key global-map "\C-cc" 'org-capture)
;; 捕获模板
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/GTD/gusty.org" "Tasks")
         "* TODO %?\n %i\n %a")
        ("j" "Journal" entry (file+datetree "~/GTD/journal.org")
                  "* %?\nEntered on %U\n %i\n %a")))

;;
(define-key global-map "\C-ca" 'org-agenda)
;; 设置日程的搜索路径

;; org-agenda-files 设置错误，待研究
;;(setq org-agenda-files  (quote "~/GTD/gusty.org"))
;;(setq org-agenda-files '(("~/GTD/gusty.org") ("~/GTD/gtd.org")))

;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(org-agenda-files (quote ("~/GTD/gusty.org" "~/GTD/gtd.org"))))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;)


(provide 'org-cfg)

