# =============================================================================
# BACKEND – placeholder Dockerfile
# =============================================================================
# Contract with the deployment repo:
#   - container listens on port 8080
#   - all routes live under /api/...  (the proxy passes the path through unchanged)
#   - GET /api/health responds with 200 (used for the healthcheck)
#   - configuration comes from environment variables (e.g. DATABASE_URL)
#
# Currently: tiny busybox web server that only answers /api/health.
#
# --- Example Node/Express: ---------------------------------------------------
# FROM node:22-alpine
# WORKDIR /app
# COPY package*.json ./
# RUN npm ci --omit=dev
# COPY . .
# EXPOSE 8080
# CMD ["node", "src/index.js"]
#
# --- Example Python/FastAPI: -------------------------------------------------
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
