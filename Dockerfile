# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /test4_sample

# Install dependencies
RUN pip install -r requirements.txt

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the command to start the application when the container launches
ENTRYPOINT ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]
