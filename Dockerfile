FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR \Users\mithi\biomarker_db_project\biomarker_db


COPY \Users\mithi\biomarker_db_project\biomarker_db

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]