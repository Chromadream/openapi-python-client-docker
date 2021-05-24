FROM python:buster

RUN apt-get update && \
    apt-get upgrade -y && \
     rm -rf /var/lib/apt/lists/*

RUN pip install openapi-python-client
VOLUME ["/out"]
WORKDIR /out
ENTRYPOINT [ "openapi-python-client" ]
