FROM ubuntu

WORKDIR /app

COPY requirement.txt /app
COPY . /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirement.txt
    cd app && \
    virtualenv env && \
    cd env/scripts && \
    cd .. && \
    cd .. && \
    

ENTRYPOINT ["python3"]
CMD ["manage.py","runserver","0.0.0.0:8000"]    


