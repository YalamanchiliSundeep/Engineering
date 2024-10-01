# Use an official Python runtime as a parent image
FROM python:3.10-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy application code
COPY test4_sample.py /app/

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the command to start the application when the container launches
CMD ["streamlit", "run", "test4_sample.py"]