# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable for Flask
ENV PORT=8080
ENV FLASK_ENV=production

# Run the app using Gunicorn with workers and threads
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app", "--workers=4", "--threads=2"]
