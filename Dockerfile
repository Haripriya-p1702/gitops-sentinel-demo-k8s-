FROM python:latest

WORKDIR /app
COPY . .

RUN pip install flask

CMD ["python", "app.py"]
CMD ["python", "app.py"]
CMD ["python", "main.py"]