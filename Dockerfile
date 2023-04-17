FROM python:3.7-alpine as base
WORKDIR /app
COPY /scripts/ /app/scripts/


FROM base as dev
COPY requirements.txt /app/
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "scripts/app.py"]

FROM base as test
COPY test_scripts.py /app/
RUN pip install pytest riotwatcher
CMD ["pytest", "test_scripts.py"]