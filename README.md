# wazuh-server
The Wazuh server analyzes the data received from the Wazuh agents, triggering alerts when threats or anomalies are detected. It is also used to remotely manage the agents' configuration and monitor their status.

## Now apply template to container
```sh
pkg info -D -x wazuh-server | less
```
Edii file /usr/local/bastille/jails/wazuh/fstab
```sh
fdesc	/dev/fd		fdescfs		rw	0	0
proc	/proc		procfs		rw	0	0
```

## License
This project is licensed under the BSD-3-Clause license.