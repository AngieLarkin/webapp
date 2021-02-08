FROM ubuntu:14.04
ADD requirements.txt /tmp/
ADD app.py /opt/webapp/
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr /tmp/requirements.txt
EXPOSE 5000
WORKDIR /opt/webapp/
CMD ["app.py", "run"]
