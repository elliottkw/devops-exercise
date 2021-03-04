FROM python:3.8

WORKDIR /usr/src/app

COPY app.py ./

COPY requirement.txt ./

RUN pip install --no-cache-dir -r requirement.txt

CMD ["python", "app.py"]