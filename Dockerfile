# Use an official lightweight Python image
FROM python:3.11-slim

# Set environment variables to avoid Python writing .pyc files and buffering stdout
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory inside the container
WORKDIR /app

# Install system dependencies (for pandas/numpy performance)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir pandas numpy

# Copy project files into the container (optional if you want to add your code)
COPY . /app

# Default command (can be overridden when running the container)
CMD ["python3"]
