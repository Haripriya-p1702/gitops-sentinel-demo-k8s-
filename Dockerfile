FROM python:latest

WORKDIR /app
COPY . .

RUN pip install flask

CMD ["python", "app.py"]
