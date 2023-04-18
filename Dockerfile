# Usar una imagen base de Python
FROM python:3.8-slim-buster

# Actualizar el sistema y instalar dependencias
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        xauth \
        libx11-dev \
        libxcb1-dev \
        libxext-dev \
        libxrender-dev \
        libxtst-dev \
        libfreetype6-dev \
        libfontconfig1 \
        && \
    rm -rf /var/lib/apt/lists/*

# Copiar el código fuente de la aplicación
COPY main.py .

# Instalar dependencias de Python
RUN pip install PyQt5

# Establecer las variables de entorno para X11
ENV DISPLAY=:0
ENV QT_X11_NO_MITSHM=1

# Ejecutar la aplicación
CMD [ "python", "./main.py" ]
