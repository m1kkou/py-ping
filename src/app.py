from flask import Flask
from uuid import uuid4
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def get_log_output():
    return f'{datetime.utcnow()}: {uuid4()}'


if __name__ == "__main__":
    app.run(port='3000',debug=False)