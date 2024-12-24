from flask import Flask
from flask_migrate import Migrate
from flask_cors import CORS
from config import Config
from models import db
from routes import routes


def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)

    CORS(app)
    db.init_app(app)

    migrate = Migrate(app, db)

    app.register_blueprint(routes)

    return app


app = create_app()  # Initialize the app here

if __name__ == '__main__':
    app.run(debug=True, use_reloader=True, port=5000, host="0.0.0.0")
