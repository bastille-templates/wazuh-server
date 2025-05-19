bastille create wazuh-server 14.2-RELEASE 10.0.0.20
bastille cmd wazuh-server sed -e "s|quarterly|latest|g" -i.bak /etc/pkg/FreeBSD.conf
bastille cmd wazuh-server sed -e "s|#PermitRootLogin no|PermitRootLogin yes|g" -i.bak /etc/ssh/sshd_config
bastille cmd wazuh-server sed -e "s|#PasswordAuthentication no|PasswordAuthentication yes|g" -i.bak /etc/ssh/sshd_config
bastille cmd wazuh-server sed -e "s|#PermitEmptyPasswords no|PermitEmptyPasswords yes|g" -i.bak /etc/ssh/sshd_config
bastille cmd wazuh-server service sshd enable
bastille cmd wazuh-server service sshd start
bastille cmd wazuh-server passwd -p 'sshroot'
#cp config/* /usr/local/bastille/jails/wazuh-server/
bastille stop wazuh-server; bastille start wazuh-server
bastille pkg wazuh-server update -y; bastille pkg wazuh-server update
bastille pkg wazuh-server install -y wazuh-server
bastille pkg wazuh-server info -D -x wazuh-server | less

bastille bootstrap https://github.com/bastille-templates/wazuh-server
bastille template wazuh-server bastille-templates/wazuh-server