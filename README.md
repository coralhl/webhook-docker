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

There is a default webhook configured in `/config/hooks/hooks.json`

`EXTRA_PARAM` is passed along to the application on startup, you use this to set additional cli arguments
