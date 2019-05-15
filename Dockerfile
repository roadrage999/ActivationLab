FROM alpine:3.9

RUN apk add --nocache python3 && \
    apk add --nocache python3-tk && \
    apk add --nocache git && \
    git clone https://github.com/SystemRage/py-kms.git /opt

EXPOSE 1688

CMD [ "/usr/bin/python3", "/opt/py-kms/py-kms/pykms_Server.py" ]
