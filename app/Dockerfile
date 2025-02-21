# Use official Python image as base
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy application files
COPY main.py /app/

# Install dependencies
RUN pip install flask

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "main.py"]
