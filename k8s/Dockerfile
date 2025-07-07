# Use an official Python image as the base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /k8s

# Copy application code to the container
COPY app.py .

# Install required dependencies
RUN pip install flask

# Expose port 80
EXPOSE 80

# Define the command to run the application
CMD ["python", "app.py"]
