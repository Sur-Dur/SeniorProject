# The official Docker Image of Miniconda -which is the lightweight Anaconda-
# This image is a Debian-based Linux distro with Miniconda already installed.
FROM continuumio/miniconda3:23.3.1

# Install Node.js and npm
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y --no-install-recommends nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy conda environment file and install dependencies
COPY environment.yml /app/environment.yml
RUN conda env update -f /app/environment.yml

# Install project dependencies (not needed rn)
# RUN npm install
