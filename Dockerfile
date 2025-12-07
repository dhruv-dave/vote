FROM docker-registry-remote.artifactory-espoo2.int.net.nokia.com/python:alpine3.17

WORKDIR /app

COPY . .

RUN pip install --trusted-host pypi.org -r requirements.txt

EXPOSE 80

CMD  gunicorn app:app -b 0.0.0.0:80
