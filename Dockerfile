FROM python:3.7

COPY requirements.txt /app/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

COPY ./src /src
WORKDIR /src
