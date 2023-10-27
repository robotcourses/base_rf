# Use uma imagem base com Python 3.12
FROM python:3.12

# Defina o diretório de trabalho
WORKDIR /app

# Copie o arquivo de dependências (pyproject.toml) e o arquivo de bloqueio (poetry.lock)
COPY ./pyproject.toml ./poetry.lock /app/

# Instale o Poetry
RUN pip install poetry

# Instale as dependências do projeto
RUN poetry install

# Copie o restante dos arquivos do projeto para o diretório de trabalho
COPY . /app/

# Comando padrão para executar quando o contêiner for iniciado
CMD ["poetry", "run", "robot", "-d", "log", "./robot_jenkins/api"]