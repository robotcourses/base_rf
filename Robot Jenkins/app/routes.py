from flask import Blueprint, jsonify

main_routes = Blueprint('main_routes', __name__)

@main_routes.route('/')
def hello():
    data = {
        'message': 'Hello, Jenkins! This is a simple Python application with an endpoint.',
        'status': 'success'
    }
    return jsonify(data)