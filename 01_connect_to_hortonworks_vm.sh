#!/usr/bin/env bash
#add sandbox.hortonworks.com to host file
mac=$(echo '127.0.0.1 sandbox.hortonworks.com' | sudo tee -a /private/etc/hosts)
linux=$(echo '127.0.0.1 sandbox.hortonworks.com' | sudo tee -a /etc/hosts)
windows=$(echo '127.0.0.1 sandbox.hortonworks.com' >> C:\Windows\System32\Drivers\etc\hosts)

# ssh into vm and change root password
ssh root@127.0.0.1 -p 2222
(default password: hadoop)
(after password: "<@R3all76DiffP0ss>")

# set admin password for Ambari
ambari-admin-password-reset
(after password: "<@R3all76DiffP0ss>")

# login to Ambari from browser
http://127.0.0.1:8080

# turn on HBase
