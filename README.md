# Backend

Platzhalter-Repo. Die Technologie ist noch offen – das Deployment ist schon fertig.

## Vertrag

| Regel | Wert |
|---|---|
| Container-Port | `8080` |
| Routen-Präfix | `/api` (z.B. `/api/users`) |
| Healthcheck | `GET /api/health` → HTTP 200 |
| Datenbank | über `DATABASE_URL` (Env-Variable, kommt aus dem Deployment-Repo) |

## Loslegen

1. `placeholder/` löschen
2. Framework deiner Wahl einrichten (Express, FastAPI, Spring, Go, …)
3. Im `Dockerfile` das passende Beispiel aktivieren
4. `/api/health` implementieren
5. Push auf `main` → Image `ghcr.io/<orga>/<repo>:latest` wird gebaut
