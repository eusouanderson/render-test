# Use a base image do Python
FROM python:3.9-slim

# Copie o arquivo de código-fonte e o requirements.txt para o diretório de trabalho
COPY . /app

# Exponha a porta 5000
EXPOSE 5000

# Defina o comando de execução da aplicação
CMD ["python", "app.py"]
