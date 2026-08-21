FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Explicitly use standard port if PORT not set, though the script handles it
ENV PORT=9090

# Expose the default port
EXPOSE $PORT

CMD ["python", "server.py"]
