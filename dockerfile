#FROM python:3.9-slim

#WORKDIR /

#COPY . /
#RUN pip install -r requirements.txt

#CMD ["python", "app.py"]

#CMD ["python", "app.py"]
#COPY . /app
FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
