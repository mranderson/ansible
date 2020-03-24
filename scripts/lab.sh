#!/bin/bash

for i in server1 server2 server4;
  do ssh root@$i "sudo tar -czf messages.tar.gz /var/log/messages";
done

ansible -m fetch -a "src=/home/keith/messages.tar.gz dest=/tmp/messages" all

