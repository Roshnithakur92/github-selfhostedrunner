from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "welcome back gyus at cloudside using self hosted runner !"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
