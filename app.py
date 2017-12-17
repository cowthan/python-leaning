#!/usr/bin/even python3
# -*- coding: utf-8 -*-

from flask import Flask, url_for, request, render_template
from jinja2 import Template

#必须，解决jinja2模板的编码问题
import sys
reload(sys)
sys.setdefaultencoding('utf8')

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('tp_index.html', name='王二')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        return "登录请求"
    else:
        return render_template('aa.html', name='王二')

@app.route('/user/<username>')
def show_user_profile(username):
    # show the user profile for that user
    return 'User %s' % username

with app.test_request_context():
	print url_for('index')
	print url_for('login')
	print url_for('login', next='/')
	print url_for('show_user_profile', username='John Doe')

if __name__ == '__main__':
	app.debug = True #调试模式，代码修改后会自动重新载入
	app.run()   #app只对本机开放
	#app.run(host='0.0.0.0')  #让app对外网开放