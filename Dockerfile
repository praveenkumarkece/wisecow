FROM ubuntu:latest

RUN apt-get update && apt-get install -y cowsay fortune netcat

COPY wisecow.sh /app/wisecow.sh

EXPOSE 4499

CMD ["/app/wisecow.sh"]

# Set PATH environment variable
ENV PATH="/usr/games:${PATH}"
