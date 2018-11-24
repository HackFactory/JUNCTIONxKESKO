import os
import random
import string

import requests

def prepare_string(request):
    print(request)
    print("request:")
    print(request.args.to_dict()["question"])
    return request.args.to_dict()["question"]

def send_answer(answer):
    return {"text": answer}