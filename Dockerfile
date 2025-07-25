FROM jenkins/jenkins:lts

USER root

# Install Node.js (LTS version, e.g., 18)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get update \
    && apt-get install -y nodejs

# Install serve globally to serve React builds
RUN npm install -g serve

# Confirm Node.js, npm and serve are installed
RUN node -v && npm -v && serve --version
