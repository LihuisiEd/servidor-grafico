FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    i3 \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*

CMD ["i3"]