#!/usr/bin/env python
# -*- coding: utf-8 -*-
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'whééééééééééé, time to act'

if __name__ == '__main__':
	# http://stackoverflow.com/questions/20778771/what-is-the-difference-between-0-0-0-0-127-0-0-1-and-localhost
    app.run(debug=True,host='0.0.0.0')
