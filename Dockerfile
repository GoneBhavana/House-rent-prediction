FROM python:3.11-slim-bookworm

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirement.txt ./
RUN python -m pip install --no-cache-dir -r requirement.txt \
    && python -m pip install --no-cache-dir --upgrade setuptools wheel

COPY app.py house.py house_data.csv ./
COPY templates ./templates
COPY static ./static

# Build the model in the same environment that runs the application.
RUN python house.py

RUN useradd --create-home --shell /usr/sbin/nologin appuser \
    && chown -R appuser:appuser /app
USER appuser

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]