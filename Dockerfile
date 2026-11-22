# =============================================================================
# BACKEND – Platzhalter-Dockerfile
# =============================================================================
# Vertrag mit dem Deployment-Repo:
#   - Container lauscht auf Port 8080
#   - alle Routen liegen unter /api/...  (der Proxy reicht den Pfad unverändert durch)
#   - GET /api/health antwortet mit 200 (wird für den Healthcheck genutzt)
#   - Konfiguration kommt über Umgebungsvariablen (z.B. DATABASE_URL)
#
# Aktuell: winziger busybox-Webserver, der nur /api/health beantwortet.
#
# --- Beispiel Node/Express: --------------------------------------------------
# FROM node:22-alpine
# WORKDIR /app
# COPY package*.json ./
# RUN npm ci --omit=dev
# COPY . .
# EXPOSE 8080
# CMD ["node", "src/index.js"]
#
# --- Beispiel Python/FastAPI: ------------------------------------------------
# FROM python:3.13-slim
# WORKDIR /app
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt
# COPY . .
# EXPOSE 8080
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
# ---------------------------------------------------------------------------

FROM busybox:stable
COPY placeholder/ /www/
EXPOSE 8080
CMD ["httpd", "-f", "-p", "8080", "-h", "/www"]
