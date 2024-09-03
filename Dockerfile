FROM python:3.8-slim-buster
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN apt-get update git -y

COPY . .
EXPOSE 8080
CMD python3 main.py
