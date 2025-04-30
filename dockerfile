# Use official Python image (better than Ubuntu)
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && pip install -r requirements.txt

# Expose the port FastAPI runs on
EXPOSE 8000

# Run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
