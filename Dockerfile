FROM python:3.10-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y libreoffice curl build-essential poppler-utils && \
    pip installpdfplumber python-docx

# Create app directory
WORKDIR /app

# Copy your script
COPY exp.py .

# Default command
ENTRYPOINT ["python", "exp.py"]
