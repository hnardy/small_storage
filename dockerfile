# Usa a imagem oficial do Python
FROM python:3.11-slim

# Define diretório dentro do container
WORKDIR /app

# Copia dependências
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo o projeto
COPY . /app/

# Expõe a porta 8000
EXPOSE 8000

# Comando para rodar o Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
