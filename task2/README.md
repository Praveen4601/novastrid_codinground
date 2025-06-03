# Dockerized Flask Web App

This is a simple Flask web application containerized with Docker.

---

## 🔧 Prerequisites
- Docker installed on your system

---

## 🚀 How to Build and Run

### 1. Clone the Repository

git clone https://github.com/yourusername/docker-flask-web-app.git
cd docker-flask-web-app

### 2. Build the Docker Image
docker build -t flask-app .

### 3. Run the container
docker run -p 8080:8080 flask-app

### 4. Access the App

Visit: http://localhost:8080