FROM rabbitmq:3.12-alpine

RUN apk update \
    && apk add --no-cache curl g++ make autoconf bash python3

RUN rabbitmq-plugins enable rabbitmq_management

COPY ./rabbitmqadmin /usr/local/bin/rabbitmqadmin
RUN chmod +x /usr/local/bin/rabbitmqadmin