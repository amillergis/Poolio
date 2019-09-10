FROM python:3.7.4-buster

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN useradd -ms /bin/bash <user>
WORKDIR /home/<user>
USER <user>
CMD python manage.py runserver 0:8000
