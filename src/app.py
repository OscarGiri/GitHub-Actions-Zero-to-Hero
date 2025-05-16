from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route("/add")
def add_route():
    try:
        a = int(request.args.get("a", 0))
        b = int(request.args.get("b", 0))
        return jsonify({"result": a + b})
    except Exception as e:
        return jsonify({"error": str(e)}), 400

if __name__ == "__main__":
    # Run Flask dev server (for local testing)
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 8000)), debug=False, use_reloader=False)