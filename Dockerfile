FROM python:3.7-alpine3.9

LABEL python-version=3.7

ENV PATH="/root/.local/bin:$PATH"
ENV PYTHONIOENCODING=UTF-8

RUN apk add --no-cache jq moreutils

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install

ENTRYPOINT [ "aws" ]
