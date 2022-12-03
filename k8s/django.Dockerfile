FROM python:latest

WORKDIR /code

COPY application .
ADD requirements.txt .

RUN pip install -U pip
RUN pip install -r requirements.txt

CMD ["uvicorn", "application.asgi:application", "--host", "0.0.0.0", "--port", "8080", "--workers", "3"]