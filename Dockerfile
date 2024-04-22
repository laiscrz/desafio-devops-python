FROM python:3.9-slim

WORKDIR /app

ARG app_python='test'

ENV PYTHON_ENV=${app_python}
 
COPY ${app_python} .

CMD python ${PYTHON_ENV}
