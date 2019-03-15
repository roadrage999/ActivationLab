FROM alpine:3.9

RUN apk add --nocache python2 && \
    apk add --nocache git && \
    git clone https://github.com/SystemRage/py-kms.git /opt

EXPOSE 1688

CMD [ "/usr/bin/python", "/opt/py2-kms/server.py" ]
