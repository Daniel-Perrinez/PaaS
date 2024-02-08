FROM python:3-alpine3.15
WORKDIR /app
COPY . /app
# Update and upgrade the installed packages, and install required utilities
RUN apk update && \
    apk upgrade --available && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

CMD ["python", "./app.py"]
