from flask import Flask
from routes import main_routes

def create_app():
    app = Flask(__name__)
    app.register_blueprint(main_routes)

    return app

if __name__ == "__main__":
    app = create_app()
    app.run(debug=True, port=8081)