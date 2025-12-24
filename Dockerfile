FROM python:3.10-slim

WORKDIR /app

RUN pip install --no-cache-dir litellm

COPY config.yaml /app/config.yaml

EXPOSE 4000

CMD ["litellm", "--config", "config.yaml", "--port", "4000"]
