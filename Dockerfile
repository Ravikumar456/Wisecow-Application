FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y cowsay fortune netcat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh
WORKDIR /app
CMD ["./wisecow.sh"]

