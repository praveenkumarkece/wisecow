# Use a base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the necessary files
COPY wisecow.sh .

# Install dependencies
RUN apt-get update && apt-get install -y cowsay fortune netcat

# Expose the desired port
EXPOSE 4499

# Set the command to run the application
CMD ["./wisecow.sh"]
