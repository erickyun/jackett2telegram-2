# Use an official Python runtime as a parent image
FROM python:3.9-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r /app/requirements.txt
# Define environment variable
ENV TOKEN $TOKEN
ENV CHATID $CHATID
ENV DELAY 60
ENV LOG_LEVEL INFO

# Run app.py when the container launches
CMD ["python", "jackett2telegram.py"]
