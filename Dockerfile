# Use an official Python runtime as a parent image
FROM python:3.7-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY /scripts/ /app/scripts/
COPY test_scripts.py /app/
COPY requirements.txt /app/

EXPOSE 8000

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run app.py when the container launches
CMD ["python", "scripts/retrieveChampionData.py"]