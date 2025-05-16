FROM python:3.9-slim

WORKDIR /app

COPY src/ ./src

RUN pip install pytest

EXPOSE 8000

CMD ["pytest", "src/addition.py"]