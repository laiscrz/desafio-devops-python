FROM python:3.9-slim
 
WORKDIR /app

ARG PYTHON_ENV

ENV PYTHON_ENV=$APP_Python
 
COPY . .
 
CMD ["python", "apprm99675.py"]