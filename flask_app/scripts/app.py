from flask import Flask
import compareChampionData

app = Flask(__name__)

@app.route('/')
def index():
    return compareChampionData.compareChampionData()

if __name__ == '__main__':
    port = 8080
    app.run(host='0.0.0.0', port=port, debug=True)