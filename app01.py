from flask import Flask
app01 = Flask(__name__)

@app01.route("/")
def greeting():
    return "<h1 style='color:red'>Hello World!</h1>"

if __name__ == "__main__":
    app01.run(host='0.0.0.0')
