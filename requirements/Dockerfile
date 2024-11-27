# The official Docker Image of Miniconda -the lightweight Anaconda-
# This image is a Debian-based Linux distro with Miniconda already installed.
FROM continuumio/miniconda3:24.9.2-0

# Install Node.js and curl
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

# Copy application files
COPY package.json /app/

# Clear npm cache and remove potential leftover files
RUN npm cache clean --force && rm -rf node_modules

# Install dependencies from package.json
RUN npm install

# Install Conda dependencies
COPY environment.yml /app/environment.yml
RUN conda env update -f /app/environment.yml
RUN conda clean -afy

# Set the PATH to the Conda environment
ENV PATH="/opt/conda/envs/surdur-env/bin:$PATH"

# Expose application port
EXPOSE 8000
