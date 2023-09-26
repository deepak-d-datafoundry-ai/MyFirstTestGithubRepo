# Use an official Python runtime as the base image
# FROM python:3.7-slim
FROM python:3.7-alpine

# FIX CVE-2022-40897
RUN pip install --upgrade 'setuptools==65.5.1'

# Set the working directory in the container
WORKDIR /app

# Copy the current directory (with your Python script) into the container at /app
COPY . .

# Command to run your script
CMD ["python", "./hello_world.py"]
