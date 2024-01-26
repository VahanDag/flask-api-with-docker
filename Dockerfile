# Temel alınacak Python image'ını belirtin
FROM python:3.11-slim

# Çalışma dizinini belirtin
WORKDIR /usr/src/app

# Bağımlılıkları kopyalayın ve yükleyin
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını kopyalayın
COPY . .

# Uygulamanın çalıştırılacağı portu belirtin
EXPOSE 5000

# Uygulamayı başlatma komutunu ayarlayın
CMD ["flask", "run", "--host=0.0.0.0"]
