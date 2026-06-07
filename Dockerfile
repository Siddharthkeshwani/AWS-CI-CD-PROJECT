FROM python:3.14.5-slim-bookworm
WORKDIR /application
COPY . /application
RUN apt update -y && apt install awscli -y

RUN pip install -r requirements.txt
CMD ["python3","application.py"]