#!/bin/bash
# from here: http://diegobz.net/2010/03/07/enabling-apache-userdir-public_html-with-selinux-enabled-on-fedora/

setsebool -P httpd_enable_homedirs true
chcon -R -t httpd_sys_content_t ~<username>/public_html  #Might not be necessary
