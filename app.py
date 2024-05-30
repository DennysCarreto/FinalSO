from flask import Flask, render_template

app = Flask(__name__)

# Datos del estudiante y otros tres datos
estudiante = {
    'nombre': 'Dennys Rolando Y. Carreto Aguilon',
    'carnet': 2276616,
}

otros_datos = ['Universidad Rafael Landivar', 'Ingeniería de Software', 'Sistemas Operativos']

@app.route('/')
def index():
    return render_template('index.html', estudiante=estudiante, otros_datos=otros_datos)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)