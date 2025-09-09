from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return jsonify(message="Backend is running, but use /api")

@app.route("/api")
def api_root():
    return jsonify(message="Hello from backend API!")

@app.route("/api/health")
def health():
    return jsonify(status="healthy")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
