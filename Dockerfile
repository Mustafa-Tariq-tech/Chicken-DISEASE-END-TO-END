FROM python:3.10-slim-buster

RUN apt update -y && apt install awscli -y
WORKDIR /app

COPY . /app
RUN pip intsall -r requirements.txt
CMD ["python3", "app.py"]



