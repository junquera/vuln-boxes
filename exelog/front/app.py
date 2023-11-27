from re import sub
from flask import Flask, render_template, redirect, url_for, render_template_string,request, send_file
import io
import base64
import subprocess
import logging

app = Flask(__name__)
@app.before_request
def log_request_info():
    app.logger.debug('Headers: %s', request.headers)
    app.logger.debug('Body: %s', request.get_data())

# https://www.digitalocean.com/community/tutorials/how-to-use-templates-in-a-flask-application
@app.route("/")
def home():
    return render_template('index.html')

@app.route("/profile", methods=["GET", "POST"])
def profile():
    if request.method == 'POST':
        
        file = request.files['profile']
        
        if file.filename[-4:].lower() != '.png':
            raise Exception("Just PNG files")
        file.save('/tmp/profile.png')
        return redirect('/')
    elif request.method == 'GET':
        with open('/tmp/profile.png', 'rb') as f:
            return send_file(
            io.BytesIO(f.read()),
            mimetype='application/octet-stream',
            download_name='profile',
            as_attachment=True)
        
# https://book.hacktricks.xyz/pentesting-web/ssti-server-side-template-injection/jinja2-ssti
@app.route("/page")
def template():
    query = request.args
    with open(query.get('template')) as f:
        return render_template_string(f.read())
    
# logging.basicConfig(filename = '/var/log/app.log', level=logging.DEBUG)
app.run(host="0.0.0.0", debug=True)
