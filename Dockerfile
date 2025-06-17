# Use official Python image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY model.pkl .

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]
