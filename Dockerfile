# Usa la imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /FinalSO

# Copia los archivos de tu aplicación al directorio de trabajo
COPY . /FinalSO

# Instala la herramienta de entornos virtuales
RUN python -m venv /venv

# Activa el entorno virtual
ENV PATH="/venv/bin:$PATH"

# Instala las dependencias de tu aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 para acceder a la aplicación
EXPOSE 5000

# Comando para iniciar la aplicación
CMD ["/venv/bin/python", "app.py"]