from flask import Flask
from flask.ext.sqlalchemy import SQLAlchemy
import os, socket

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = os.environ['DATABASE_URI']
database = SQLAlchemy(webserver)
hostname = socket.gethostname()

@app.route('/')
def index():
  return 'Hello, from sunny %s!\n' % hostname

@app.route('/database')
def dbtest():
  try:
      database.create_all()
  except Exception as e:
      return e.message + '\n'
  return 'Database Connected from %s!\n' % hostname

if __name__ == '__main__':
  webserver.run()
