#!/bin/bash

# 🚀 setup.sh: Deployment script for discord-n8n-listener on Ubuntu EC2 with Docker

# 1. Actualiza el sistema
echo "🛠️ Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

# 2. Instala Docker
echo "🐳 Instalando Docker..."
sudo apt install -y docker.io

# 3. Instala Docker Compose
echo "📦 Instalando Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# 4. Añade el usuario actual al grupo docker
sudo usermod -aG docker $USER

# 5. Construye y levanta el contenedor
echo "🏗️ Construyendo imagen y levantando contenedor..."
docker-compose up -d --build

# 6. Final
echo "✅ ¡Despliegue completo! El servicio está corriendo en el puerto 3000"