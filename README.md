主機開機或重開機後會以郵件通知到目前抓到IP
####設定排程####
編輯/etc/rc.local
新增以下
sh /home/sendIP.sh #要改成scrip放置目錄
開機就會自動執行
