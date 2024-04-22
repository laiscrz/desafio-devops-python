# Implantação de Aplicação Python usando Docker

Este repositório contém os passos necessários para implantar uma aplicação Python usando Docker, solicitado pelo professor.

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
# Use a imagem Python na versão 3.9-slim como base
FROM python:3.9-slim

# Defina o diretório de trabalho como /app
WORKDIR /app

# Defina um argumento chamado app_python para receber o nome do arquivo Python
ARG app_python='test'

# Defina a variável de ambiente PYTHON_ENV com o nome do arquivo Python fornecido
ENV PYTHON_ENV=${app_python}

# Copie o arquivo Python especificado para o diretório de trabalho (/app) no contêiner
COPY ${app_python} .

# Configure o comando padrão para executar o aplicativo Python
CMD python ${PYTHON_ENV}
````


### 3. Criar a imagem do Docker:
Para criar a imagem do Docker, execute o seguinte comando:
```bash
docker build -t dimmoney-python --build-arg app_python=apprm99675.py .
```

### 4. Executar o container:
Para executar o container, execute o seguinte comando:
```bash
docker container run --rm dimmoney-python
```

## Outros Desafios
Além da aplicação com Python, nosso grupo enfrentou outros desafios interessantes que complementam a avaliação da disciplina de DevOps. Confira os repositórios de cada desafio abaixo:
- [Desafio DockerFile com Java](https://github.com/Fabs0602/desafio-devops-java)
- [Desafio DockerFile com Node.Js](https://github.com/biancaroman/desafio-devops-nodejs)

## Integrantes do grupo
<table>
  <tr>
    <td align="center">
      <a href="https://github.com/biancaroman">
        <img src="https://avatars.githubusercontent.com/u/128830935?v=4" width="100px;" border-radius='50%' alt="Bianca Román's photo on GitHub"/><br>
        <sub>
          <b>Bianca Román</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/charlenefialho">
        <img src="https://avatars.githubusercontent.com/u/94643076?v=4" width="100px;" border-radius='50%' alt="Charlene Aparecida's photo on GitHub"/><br>
        <sub>
          <b>Charlene Aparecida</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/laiscrz">
        <img src="https://avatars.githubusercontent.com/u/133046134?v=4" width="100px;" alt="Lais Alves's photo on GitHub"/><br>
        <sub>
          <b>Lais Alves</b>
        </sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/LuccaRaphael">
        <img src="https://avatars.githubusercontent.com/u/127765063?v=4" width="100px;" border-radius='50%' alt="Lucca Raphael's photo on GitHub"/><br>
        <sub>
          <b>Lucca Raphael</b>
        </sub>
      </a>
    </td>
     <td align="center">
      <a href="https://github.com/Fabs0602">
        <img src="https://avatars.githubusercontent.com/u/111320639?v=4" width="100px;" border-radius='50%' alt="Fabricio Torres's photo on GitHub"/><br>
        <sub>
          <b>Fabricio Torres</b>
        </sub>
      </a>
    </td>
  </tr>
</table>
