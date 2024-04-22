# Implantação de Aplicação Python usando Docker

Este repositório contém os passos necessários para implantar uma aplicação Python usando Docker.

## Pré-requisitos

- Docker instalado e configurado em sua máquina.

- ## Passos

### 1. Clonar o repositório:

```bash
https://github.com/laiscrz/desafio-devops-python.git
````

### 2. Criar o Dockerfile:
- Crie um Dockerfile com as seguintes instruções:
````dockerfile
# Use a imagem Python 3.9 como imagem base
From python:3.9-slim

# Defina o diretório de trabalho como /app
WORKDIR /app

# Defina a variável de ambiente PYTHON_ENV
ARG PYTHON_ENV

# Defina o diretório de trabalho como /app e sete a variável de ambiente PYTHON_ENV
ENV PYTHON_ENV=$PYTHON_ENV

# Copie os arquivos do diretório atual para o diretório de trabalho
COPY . .

# Rode o script Python aprm99675.py quando o container for iniciado
CMD ["python", "apprm99675.py"]
```
````


### 3. Criar a imagem do Docker:
Para criar a imagem do Docker, execute o seguinte comando:
```
docker build -t dimmoney-python --build-arg PYTHON_ENV=my_app .
```

### 4. Executar o container:
Para executar o container, execute o seguinte comando:
```
docker container run --rm dimmoney-python
```
