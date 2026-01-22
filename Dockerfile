FROM python:3.10-slim

WORKDIR /app

COPY backend/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY backend /app/backend

ENV PYTHONPATH=/app
ENV LEROBOT_ANNOTATE_CACHE=/data/cache
ENV LEROBOT_ANNOTATE_EXPORT=/data/exports

EXPOSE 7860
CMD ["uvicorn", "backend.app:app", "--host", "0.0.0.0", "--port", "7860"]
