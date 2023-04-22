FROM python

WORKDIR /webapp

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

CMD ["uwsgi","uwsgi.ini"]