# Use the official Python image.
FROM python:3.12

# Set the working directory.
WORKDIR /app

# Copy the requirements file.
COPY requirements.txt .

# Install the dependencies.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app code.
COPY app.py .

# Set the command to run the app using gunicorn.
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
