# The official Docker Image of Miniconda -which is the lightweight Anaconda-
# This image is a Debian-based Linux distro with Miniconda already installed.
FROM continuumio/miniconda3:23.3.1

# Install current (22.11.2024) latest stable versions of Node.js and npm
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y --no-install-recommends nodejs=18.18.0-1nodesource1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Pin npm to a specific version
RUN npm install -g npm@9.8.1

# Set working directory
WORKDIR /app

# Copy conda environment file and install dependencies
COPY environment.yml /app/environment.yml
RUN conda env update -f /app/environment.yml

# Install project dependencies (not needed rn)
# RUN npm install
