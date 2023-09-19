# Use an official Python runtime as the base image
FROM python:3.7-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory (with your Python script) into the container at /app
COPY . .

# Command to run your script
CMD ["python", "./hello_world.py"]
