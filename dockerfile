FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY . /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirement.txt && \
    virtualenv env && \
    ./env/bin/pip install -r requirement.txt

ENTRYPOINT ["./env/bin/python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
