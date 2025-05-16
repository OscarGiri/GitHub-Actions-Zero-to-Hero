FROM python:3.9-slim

WORKDIR /app

COPY src/ ./src

RUN pip install pytest

CMD ["pytest", "src/addition.py"]