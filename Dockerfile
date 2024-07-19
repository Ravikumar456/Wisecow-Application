FROM ubuntu:20.04

# Update and install packages
RUN apt-get update && \
    apt-get install -y fortune cowsay netcat && \
    apt-get clean

COPY wisecow.sh /app/wisecow.sh

RUN chmod +x /app/wisecow.sh

WORKDIR /app

EXPOSE 4499

CMD ["./wisecow.sh"]

