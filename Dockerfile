# Use a base image do Python
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /src

# Copie o arquivo de código-fonte e o requirements.txt para o diretório de trabalho
COPY . /app

# Instale as dependências do requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta 5000
EXPOSE 5000

# Defina o comando de execução da aplicação
CMD ["python", "app.py"]
