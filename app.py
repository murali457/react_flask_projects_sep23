from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)

# Enable CORS for all routes, allowing React frontend to call this API
CORS(app)

# these are url paths to give jsonify object
@app.route('/home', methods=['GET'])
def home():
    return jsonify({
        'title': 'Home Page',
        'message': 'Welcome to the Home Page!'
    })

@app.route('/about', methods=['GET'])
def about():
    return jsonify({
        'title': 'About Page',
        'message': 'Learn more about us on the About Page.'
    })

@app.route('/contact', methods=['GET'])
def contact():
    return jsonify({
        'title': 'Contact Page',
        'message': 'Feel free to contact us through this page.'
    })

if __name__ == "__main__":
    # Run on all available IPs (0.0.0.0) and port 5000
    app.run(host="0.0.0.0", port=5000, debug=True)
