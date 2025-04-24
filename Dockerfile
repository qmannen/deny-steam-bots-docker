# Use the latest Debian image
FROM debian:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install curl and dependencies
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js and npm
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g npm@latest

# Set the working directory
WORKDIR /app

# Copy required files from the local directory
COPY config.js .   
COPY main.js .

# Create package.json dynamically
RUN echo '{ \
  "name": "deny-steam-bots", \
  "version": "1.0.0", \
  "dependencies": { \
    "steam-user": "^4.19.9", \
    "axios": "^1.4.0", \
    "cheerio": "^1.0.0-rc.12" \
  } \
}' > package.json

# Install dependencies
RUN npm install axios cheerio steam-user steam-community

# Run the script automatically
CMD ["node", "main.js"]
