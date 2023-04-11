from flask import Flask, jsonify
import compareChampionData

app = Flask(__name__)

@app.route('/')
def index():
    return compareChampionData.compareChampionData()

if __name__ == '__main__':
    port = 8000
    app.run(host='0.0.0.0', port=port, debug=True)