# Seed: Rails app with Postgres

Minimal Rails 7 API app with `/` and `/health`, backed by Postgres
(`DATABASE_URL`). No deploy config.

```bash
bundle install
DATABASE_URL=postgres://... bin/rails server
```
