FROM python:3.9-slim-buster

RUN apt-get update && apt-get install -y x11-apps
RUN apt-get install -y python3-tk

ENV DISPLAY=:0

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "main.py"]