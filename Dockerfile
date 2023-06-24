# Base image
FROM ubuntu:latest

# Set working directory
WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat

# Copy the script to the container
COPY wisecow.sh /app/wisecow.sh

# Make the script executable
RUN chmod +x /app/wisecow.sh

# Expose the port
EXPOSE 4499

# Set the entrypoint command
CMD ["/app/wisecow.sh"]

# Set PATH environment variable
ENV PATH="/usr/games:${PATH}"
