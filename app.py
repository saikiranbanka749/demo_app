from flask import Flask, render_template
import datetime
import socket

app = Flask(__name__)

@app.route("/")
def home():
    hostname = socket.gethostname()
    time = datetime.datetime.now()
    
    users = [
        {"name": "Ravi", "role": "DevOps Engineer"},
        {"name": "Anitha", "role": "Backend Developer"},
        {"name": "Kiran", "role": "Cloud Engineer"}
    ]

    return render_template("index.html", hostname=hostname, time=time, users=users)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
