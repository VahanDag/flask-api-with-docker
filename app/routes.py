from flask import jsonify, request

from app import app


@app.route('/echo-name', methods=['POST'])
def echo_name():
    data = request.json
    name = data.get('name', 'No Name Provided')
    return jsonify({'message': f'Hello, {name}!'}), 200
