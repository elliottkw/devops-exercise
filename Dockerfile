FROM python:3.8

COPY app.py .

COPY wsgi.py .

COPY requirement.txt .

COPY uwsgi.ini .

COPY start.sh .

COPY uwsgi /etc/init.d/

RUN apt-get clean \
    && apt-get -y update

RUN apt-get -y install nginx \
    && apt-get -y install python3-dev \
    && apt-get -y install build-essential

RUN pip install --no-cache-dir -r requirement.txt

COPY nginx.conf /etc/nginx
RUN chmod +x ./start.sh

CMD ["./start.sh"]