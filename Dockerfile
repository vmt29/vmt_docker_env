FROM python:3.7
LABEL maintainer="Vasily Toropov <vtoropov@algomost.ru>"

WORKDIR /app
COPY requirements.txt /app/

RUN apt-get update

RUN pip install -r requirements.txt

RUN rm requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
