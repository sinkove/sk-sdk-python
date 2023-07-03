FROM python:3.11

ADD . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "-m" ]
CMD [ "sinkove" ]
