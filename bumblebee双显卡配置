bumblebee双显卡配置

pacman -S bumblebee
pacman -S mesa
pacman -S nvdia
pacman -S xf86-video-intel
gpasswd -a $USER bumblebee
systemctrl enable bumblebee.d.service
pacman -S mesa-demos
optirun glxgears -info
pacman -S bbswitch
这一步很关键，小米Air有独卡和集成显卡，刚安装完Arch桌面系统，会发电源使用得飞快，使用Bumblebee和bbswitch可以实现禁用Nvidia显卡，达到Arch省电的目的。
