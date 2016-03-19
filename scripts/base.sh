#!/bin/bash

# Base install
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl wget curl openssl-devel zlib-devel readline-devel openssh-clients bzip2
# yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget bzip2
# yum -y install curl bind-utils file git mailx man ntp openssh-clients patch rsync screen sysstat dstat htop traceroute vim-enhanced
