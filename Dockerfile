# Use a base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y cowsay fortune netcat

# Set the PATH environment variable
ENV PATH="/usr/games:${PATH}"

# Add a script to set the PATH on container startup
COPY set_path.sh /app/set_path.sh

# Set the working directory
WORKDIR /app

# Make the script executable
RUN chmod +x set_path.sh

# Run the script to set the PATH on container startup
ENTRYPOINT ["/app/set_path.sh"]

# Copy the script into the container
COPY wisecow.sh /app/wisecow.sh

# Set the working directory
WORKDIR /app

# Make the script executable
RUN chmod +x wisecow.sh

# Expose the server port
EXPOSE 4499

# Set the startup command
CMD ["./wisecow.sh"]
