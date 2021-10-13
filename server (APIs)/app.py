from flask import Flask, jsonify, request
from flask_cors import CORS, cross_origin
import json

# Setup
app = Flask(__name__)
CORS(app)

# Access
access_username = '' # This data is private.
access_password = '' # This data is private.


# Routes
@app.route('/')
@cross_origin()
def hello_world():
    return 'Hello World!'


@app.route('/get-statistics', methods=['GET'])
@cross_origin()
def get_statistics():
    with open('/home/AntiCorona/web/statistics.json') as json_data:
        statistics = json.load(json_data)

    return statistics


if __name__ == '__main__':
    app.run()