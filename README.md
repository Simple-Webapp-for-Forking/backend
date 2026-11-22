# Backend

Placeholder repo. The technology is still open – the deployment is already done.

## Contract

| Rule | Value |
|---|---|
| Container port | `8080` |
| Route prefix | `/api` (e.g. `/api/users`) |
| Healthcheck | `GET /api/health` → HTTP 200 |
| Database | via `DATABASE_URL` (env variable, provided by the deployment repo) |

## Getting started

1. Delete `placeholder/`
2. Set up the framework of your choice (Express, FastAPI, Spring, Go, …)
3. Enable the matching example in the `Dockerfile`
4. Implement `/api/health`
5. Push to `main` → image `ghcr.io/<org>/<repo>:latest` gets built

---

This template was built with the help of [Claude](https://claude.ai) by Anthropic.
