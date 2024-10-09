FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000



CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:$PORT"]


