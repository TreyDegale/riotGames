FROM python:3.7-alpine as base

WORKDIR /app/

COPY scripts/ /app/scripts/

FROM base as dev
COPY dev_requirements.txt /app/
RUN pip install -r dev_requirements.txt
EXPOSE 80
CMD ["python", "scripts/app.py"]

FROM base as test
COPY test_requirements.txt /app/
COPY test_scripts.py /app/
RUN pip install -r test_requirements.txt
CMD ["pytest", "test_scripts.py"]