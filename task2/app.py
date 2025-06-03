<<<<<<< HEAD
from flask import Flask

app = Flask(_name_)

@app.route('/')
def home():
    return 'Hello from Flask in Docker!'

if _name_ == '_main_':
=======
from flask import Flask

app = Flask(_name_)

@app.route('/')
def home():
    return 'Hello from Flask in Docker!'

if _name_ == '_main_':
>>>>>>> 95b83efffebd1b88ed9652bc6fdf9cec9c5bdec7
    app.run(host='0.0.0.0', port=8080)