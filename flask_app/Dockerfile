FROM python:3.7-alpine

# FROM base as dev
WORKDIR /opt/
COPY requirements.txt /opt/
COPY scripts/ /opt/
RUN pip install -r requirements.txt
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app", "--workers=5"]

# FROM base as test
# WORKDIR /app
# COPY scripts/ /app/scripts/
# COPY test_scripts.py /app/
# RUN pip install pytest riotwatcher
# CMD ["pytest", "test_scripts.py"]