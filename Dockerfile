FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./flaskr ./flaskr

EXPOSE 5000

CMD [ "gunicorn", "-b", "0.0.0.0:5000", "flaskr:create_app()" ]
