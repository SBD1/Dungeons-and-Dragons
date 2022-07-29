FROM python:3.9.13

WORKDIR /app

COPY ./ ./

RUN pip install -r requirements.txt

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]