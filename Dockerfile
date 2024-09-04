# Container image that runs your code
FROM python:alpine3.20

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
