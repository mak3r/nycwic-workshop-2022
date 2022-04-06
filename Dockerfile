FROM python:3.7

RUN apt update && apt upgrade -y

COPY . app/
WORKDIR app/

# -u flag flushes the print buffers so we can get the details in
# the container logs
ENTRYPOINT ["python3", "-u"]

CMD ["custom-web-server.py"]

