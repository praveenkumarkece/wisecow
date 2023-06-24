FROM ubuntu:latest

RUN apt-get update && apt-get install -y fortune cowsay netcat

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

ENTRYPOINT ["/bin/bash", "/app/wisecow.sh"]

# Set PATH environment variable
ENV PATH="/usr/games:${PATH}"
