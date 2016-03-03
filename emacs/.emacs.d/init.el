
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "outline" :slant normal :weight normal :height 100 :width normal)))))


;;去掉工具栏
(tool-bar-mode 0)
;;去掉菜单栏
(menu-bar-mode 0)
;;去掉滚动条
(scroll-bar-mode 0)

;; 去掉开始的欢迎界面
(setq inhibit-startup-message t)

;;;--- 显示行号
;(require 'linum)
;(setq linum-format "%3d ")
;;;---对所有文件生效
;(add-hook 'find-file-hooks (lambda () (linum-mode 1)))
;;;--- 显示列号
;(setq column-number-mode t)
;(setq line-number-mode t)

(setq global-linum-mode t);行号
(setq column-number-mode t)
(setq line-number-mode t)


;;------------显示时间设置------------------------------
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置
(setq display-time-interval 10);;时间的变化频率，单位多少来着？


; 颜色主主题  在emacs中可以用 M-x color-theme-select 去查看每种主题的颜色，然后设置
(if (eq system-type 'windows-nt)
	(add-to-list 'load-path "E:/Argamente/Config/emacs/plugins/")
)

(require 'color-theme)
(color-theme-initialize)
;; 设置主题颜色，color-theme-主题名称，全小写，有空格用-代替
(color-theme-charcoal-black)