FROM python:3.9-slim

WORKDIR /app

COPY src/ ./src

RUN pip install flask gunicorn

EXPOSE 8000

# Run Gunicorn production server binding to all interfaces on port 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "src.app:app"]