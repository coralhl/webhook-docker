# coralhl/webhook-docker

```yml
---
services:
  webhook:
    image: coralhl/webhook
    container_name: webhook
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Moscow
      - EXTRA_PARAM=-hotreload #optional
      - CONF_TYPE=yaml
      # - CONF_TYPE=json
    volumes:
      - /path/to/config:/config
    ports:
      - 9000:9000
```
You can choose which type of configuration to use by setting the environment variable `CONF_TYPE`. If it is not specified, the `json` type will be used.

There is a default webhook configured in `/config/hooks/hooks.json` and `/config/hooks/hooks.yaml`.

`EXTRA_PARAM` is passed along to the application on startup, you use this to set additional cli arguments.
