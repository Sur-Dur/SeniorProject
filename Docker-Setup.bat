cd .devcontainer && echo Don't forget to run your Docker engine! && echo Starting to build the Docker image... && docker build -t surdur-image . && echo Built the Docker image. && echo Composing the image up... && docker compose up
