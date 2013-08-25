#!/bin/bash
# from here: http://diegobz.net/2010/03/07/enabling-apache-userdir-public_html-with-selinux-enabled-on-fedora/

# Linux SE Commands
# ls -Z
# id -Z
# ps -Z
# netstat -Z

# sealert
# chcon, resorecon
#  
# getsebool -a
#
# restorecon
# audit2allow
#
# system-config-selinux
#
# Video: http://www.youtube.com/watch?v=MxjenQ31b70


setsebool -P httpd_enable_homedirs true
#chcon -R -t httpd_sys_content_t ~<username>/public_html  #Might not be necessary

# Allow quagga/zebra to write configuration files
setsebool zebra_write_config true
