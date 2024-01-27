from flask import Flask
from prometheus_flask_exporter import PrometheusMetrics

app = Flask(__name__)

from app import routes

if __name__ == '__main__':
    app.run(debug=True)

metrics = PrometheusMetrics(app)

metrics.start_http_server(9090)
