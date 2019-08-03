
;;--------语言环境字符集设置(utf-8)-------------

;;(set-language-environment 'Chinese-GB)
;;(set-keyboard-coding-system 'utf-8)
;;(set-clipboard-coding-system 'utf-8)
;;(set-terminal-coding-system 'utf-8)
;;(set-buffer-file-coding-system 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-selection-coding-system 'utf-8)
;;(modify-coding-system-alist 'process "*" 'utf-8)
;;(setq default-process-coding-system '(utf-8 . utf-8))
;;(setq-default pathname-coding-system 'utf-8)
;;(set-file-name-coding-system 'utf-8)
;;(setq ansi-color-for-comint-mode t)
;;处理shell-mode乱码,好像没作用

;;------语言环境字符集设置结束------------


;;--------------窗口界面设置------------------

(set-foreground-color "grey")
(set-background-color "black")
(set-cursor-color "green")
(set-mouse-color "gold1")

(set-scroll-bar-mode nil)
;;取消滚动栏

;;(customize-set-variable 'scroll-bar-mode 'right))
;;设置滚动栏在窗口右侧，而默认是在左侧

(tool-bar-mode nil)
;;取消工具栏

;;启动设置
(setq default-frame-alist
             '((vertical-scroll-bars)
               (top . 25)
               (left . 100)
               (width . 100)
               (height . 35)
               (background-color . "black")
               (foreground-color . "grey")
               (cursor-color . "green")
               (mouse-color . "gold1")
               (tool-bar-lines . 0)
               (menu-bar-lines . 0)
               (right-fringe)
               (left-fringe)))

;;启动自动最大化(数据自己调整，注意格式，如(top . 0)，圆点前后都要留有空格)
;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 142) (height . 49)))


;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")


;;设置默认字号，同样可以设置字体
(set-default-font "12")

;;------------窗口界面设置结束-----------------



;;------------定制操作习惯--------------------

;;设置打开文件的缺省路径
;(setq default-directory "~/")

;;ido的配置,这个可以使你在用C-x C-f打开文件的时候在后面有提示;
;;这里是直接打开了ido的支持，在emacs23中这个是自带的.
;(ido-mode t)

(setq ido-save-directory-list-file nil)
;;ido模式中不保存目录列表,解决退出Emacs时ido要询问编码的问题。

;;(setq visible-bell t)
;;关闭烦人的出错时的提示声

;;(setq inhibit-startup-message t)
;;关闭emacs启动时的画面

(setq gnus-inhibit-startup-message t)
;;关闭gnus启动时的画面

(fset 'yes-or-no-p 'y-or-n-p)
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。

(setq font-lock-maximum-decoration t)
(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))
;; 语法高亮。除 shell-mode 和 text-mode 之外的模式中使用语法高亮。

(setq column-number-mode t)
(setq line-number-mode t)
;;显示行列号
(global-linum-mode t)
(setq mouse-yank-at-point t)
;;不要在鼠标点击的那个地方插入剪贴板内容。我不喜欢那样，经常把我的文档搞的一团糟。我觉得先用光标定位，然后鼠标中键点击要好的多。不管你的光标在文档的那个位置，或是在 minibuffer，鼠标中键一点击，X selection 的内容就被插入到那个位置。

(setq kill-ring-max 200)
;;设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数). 这样防止我不小心删掉重要的东西

(setq-default auto-fill-function 'do-auto-fill)
 ; Autofill in all modes;;
(setq default-fill-column 120)
;;把 fill-column 设为 60. 这样的文字更好读

(setq-default indent-tabs-mode nil)
(setq default-tab-width 8);;tab键为8个字符宽度
(setq tab-stop-list ())
;;不用 TAB 字符来indent, 这会引起很多奇怪的错误。编辑 Makefile 的时候也不用担心，因为 makefile-mode 会把 TAB 键设置成真正的 TAB 字符，并且加亮显示的。

(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。

(setq enable-recursive-minibuffers t)
;;可以递归的使用 minibuffer

(setq scroll-margin 3 scroll-conservatively 10000)
;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。

(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode

(show-paren-mode t)
;;打开括号匹配显示模式

(setq show-paren-style 'parenthesis)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。

(mouse-avoidance-mode 'animate)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。

(setq frame-title-format "emacs@%b")
;;在标题栏显示buffer的名字

(setq uniquify-buffer-name-style 'forward);;好像没起作用
;; 当有两个文件名相同的缓冲时，使用前缀的目录名做 buffer 名字，不用原来的foobar 形式。

(setq auto-image-file-mode t)
;;让 Emacs 可以直接打开和显示图片。

;(auto-compression-mode 1)
;打开压缩文件时自动解压缩。

(setq global-font-lock-mode t)
;;进行语法加亮。

(setq-default kill-whole-line t)
;; 在行首 C-k 时，同时删除该行。

(add-hook 'comint-output-filter-functions
      'comint-watch-for-password-prompt)
;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码

;;(setq version-control t);;启用版本控制，即可以备份多次
;; (setq kept-old-versions 2);;备份最原始的版本两次，及第一次编辑前的文档，和第二次编辑前的文档
;; (setq kept-new-versions 1);;备份最新的版本1次，理解同上
;; (setq delete-old-versions t);;删掉不属于以上3中版本的版本
;; (setq backup-directory-alist '(("." . "~/backups")));;设置备份文件的路径
;; (setq backup-by-copying t);;备份设置方法，直接拷贝
;; Emacs 中，改变文件时，默认都会产生备份文件(以 ~ 结尾的文件)。可以完全去掉; (并不可取)，也可以制定备份的方式。这里采用的是，把所有的文件备份都放在一个固定的地方("~/backups")。对于每个备份文件，保留最原始的两个版本和最新的1个版本。并且备份的时候，备份文件是复本，而不是原件。

(setq make-backup-files nil)
;; 设定不产生备份文件

;;(setq auto-save-mode nil)
;;自动保存模式

(setq-default make-backup-files nil)
;; 不生成临时文件

(put 'scroll-left 'disabled nil) ;允许屏幕左移
(put 'scroll-right 'disabled nil) ;允许屏幕右移
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)
;;把这些缺省禁用的功能打开。

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;;(setq mouse-yank-at-point t)
;;使用鼠标中键可以粘贴

(setq user-full-name "kyle")
(setq user-mail-address "kyleemail@163.com")
;;设置有用的个人信息,这在很多地方有用。

(setq require-final-newline t)
;; 自动的在文件末增加一新行

(setq-default transient-mark-mode t)
;;Non-nil if Transient-Mark mode is enabled.

(setq track-eol t)
;; 当光标在行尾上下移动的时候，始终保持在行尾。

(setq Man-notify-method 'pushy)
;; 当浏览 man page 时，直接跳转到 man buffer。

;;(setq next-line-add-newlines nil)
;;Emacs 21 中已经是缺省设置。按 C-n 或向下键时不添加新行。

(global-set-key [home] 'beginning-of-buffer)
(global-set-key [end] 'end-of-buffer)
;;设置home键指向buffer开头，end键指向buffer结尾


;(global-set-key (kbd "C-,") 'scroll-left)
;; "C-,"设为屏幕左移命令
;(global-set-key (kbd "C-.") 'scroll-right)
;; "C-."设为屏幕右移命令

(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info )

;;(global-set-key [f2] 'emacs-wiki-find-file)
;;打开wiki

;;(global-set-key [f3] 'repeat-complex-command)

;;(global-set-key [f4] 'other-window)
;; 跳转到 Emacs 的另一个buffer窗口

(defun du-onekey-compile ()
  "Save buffers and start compile"
  (interactive)
  (save-some-buffers t)
  (switch-to-buffer-other-window "*compilation*")
  (compile compile-command))
  (global-set-key [C-f5] 'compile)
  (global-set-key [f5] 'du-onekey-compile)
;; C-f5, 设置编译命令; f5, 保存所有文件然后编译当前窗口文件

(global-set-key [f6] 'gdb)
;;F6设置为在Emacs中调用gdb

(global-set-key [C-f7] 'previous-error)
(global-set-key [f7] 'next-error)

(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))
(global-set-key [(f8)] 'open-eshell-other-buffer)
(global-set-key [C-f8] 'eshell)
;;目的是开一个shell的小buffer，用于更方便地测试程序(也就是运行程序了)，我经常会用到。
;;f8就是另开一个buffer然后打开shell，C-f8则是在当前的buffer打开shell

(setq speedbar-show-unknown-files t);;可以显示所有目录以及文件
(setq dframe-update-speed nil);;不自动刷新，手动 g 刷新
(setq speedbar-update-flag nil)
(setq speedbar-use-images nil);;不使用 image 的方式
(setq speedbar-verbosity-level 0)

(global-set-key [f9] 'speedbar)
;;设置f9调用speedbar命令
;;使用 n 和 p 可以上下移动，
;; + 展开目录或文件进行浏览，- 收缩，RET 访问目录或文件，g 更新 speedbar。

(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)
;;让 dired 可以递归的拷贝和删除目录。
(global-set-key [C-f9] 'dired)
;;设置[C-f9]为调用dired命令

(global-set-key [f10] 'undo)
;;设置F10为撤销

(global-set-key [C-f11] 'calendar)
;;设置F11快捷键指定Emacs 的日历系统

(global-set-key [f12] 'list-bookmarks)
;;设置F12 快速察看日程安排

(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S chunyu")
;; 设置时间戳，标识出最后一次保存文件的时间。

(global-set-key (kbd "M-g") 'goto-line)
;;设置M-g为goto-line

(global-set-key (kbd "C-SPC") 'nil)
;;取消control+space键设为mark

(global-set-key (kbd "s-SPC") 'set-mark-command)
;;用win+space键来set-mark，这样，C-SPC就可以用来调用外部输入法了。

;;----------定制操作习惯结束-------------

(provide 'custom-cfg)
