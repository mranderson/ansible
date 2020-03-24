#!/bin/bash

#create user

ansible server1  -b -m user -a "name=matt"

#demo in matt home

ansible server1 -b -m file -a "path=/home/matt/demo state=directory owner=matt group=matt mode=0755"

#copy

ansible server1 -b -m copy -a "src=/home/keith/testfile dest=/home/matt/testfile mode=0644 owner=matt group=matt"

#httpd install and start

ansible webservers -b -m yum -a "name=httpd state=latest"

ansible webservers -b -m service -a "name=httpd state=started enabled=yes"
