FROM python:3.12.1-alpine3.19

RUN apk update
RUN apk upgrade
RUN apk add curl
RUN curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sh
#RUN pip install --upgrade databricks-cli

WORKDIR /root

CMD databricks
