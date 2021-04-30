ARG STARTER_IMAGE=jupyter/datascience-notebook
FROM $STARTER_IMAGE

COPY requirements.txt .

RUN pip install -r requirements.txt
