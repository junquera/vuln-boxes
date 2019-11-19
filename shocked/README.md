```
docker-compose build
docker-compose up
```

If you are building a virtual machine, set in `docker-compose.yml`:

```yml
services:
  web:
    build:
      context: .
      dockerfile: Dockerfile-web
    deploy:
      restart_policy:
        condition: any
        delay: 5s
        max_attempts: 3
        window: 120s
    ports:
      - "127.0.0.1:8080:80"
    ...
  db:
    image: postgres
    restart_policy:
      ...
    volumes:
      - ./pg_init/:/docker-entrypoint-initdb.d/
    ...

```

Get flag from network `172.18.0.0/24`

## Service

> https://www.jetbrains.com/help/youtrack/standalone/run-docker-container-as-service.html

Put `vuln-boxes.shocked.service` in `/etc/systemd/system/` and run `systemctl enable vuln-boxes.shocked`
