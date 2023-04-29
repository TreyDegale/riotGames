FROM python:3.7-alpine

FROM base as dev
WORKDIR /app/
COPY requirements.txt /app/
COPY scripts/ /app/scripts/
RUN pip install -r dev_requirements.txt
EXPOSE 80
CMD ["python", "scripts/app.py"]

FROM base as test
WORKDIR /app
COPY scripts/ /app/scripts/
COPY test_scripts.py /app/
RUN pip install -r test_requirements.txt
CMD ["pytest", "test_scripts.py"]