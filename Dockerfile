FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9-alpine3.14


ADD server.py /app/

WORKDIR /app


CMD ["python", "server.py"]