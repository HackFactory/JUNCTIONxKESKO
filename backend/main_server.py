import json
import os
import sys
from flask import Flask, request
from flask import jsonify

import utils
import parsing_algorithm


app = Flask(__name__)
app.config.from_object(__name__)

@app.route('/get_answer/', methods=['GET', 'POST'])
def run_request():
    print("I got a file")
    print(request)
    try:
        print(request.json())
    except Exception:
        print(1)
    request_question = utils.prepare_string(request)
    answer = parsing_algorithm.parser_v0(request_question)
    return jsonify(utils.send_answer(answer))

@app.route('/ping/', methods=['GET'])
def ping():
    return jsonify({"answer": "hello, world!"})

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8888)
