FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
    cowsay \
    fortune \
    netcat-openbsd \
    bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add /usr/games to PATH
ENV PATH="/usr/games:${PATH}"

# Copy the shell script into the container
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the shell script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose the port that the server will listen on
EXPOSE 4499

# Run the shell script
CMD ["/usr/local/bin/wisecow.sh"]


