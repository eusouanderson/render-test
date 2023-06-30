# Use a base image do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /src

# Copie o arquivo de código-fonte para o diretório de trabalho
COPY src /app

# Instale as dependências
RUN pip install flask

# Exponha a porta 5000
EXPOSE 5000

# Defina o comando de execução da aplicação
CMD ["python", "app.py"]
