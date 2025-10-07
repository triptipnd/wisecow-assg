# Base image
FROM ubuntu:20.04

# Install dependencies (smaller image)
RUN apt-get update && apt-get install -y --no-install-recommends \
    fortune-mod \
    cowsay \
    bash \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Make the script executable
RUN chmod +x wisecow.sh

# Expose the port
EXPOSE 4499

# Command to run the script
CMD ["./wisecow.sh"]
