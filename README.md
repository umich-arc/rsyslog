# rsyslog

A small alpine based rsyslog container. It is configured to listen on port tcp/udp port 514 and will create a socket at `/syslog/log` that can be bind mounted into other containers. Forwarded logs are relayed to stdout.

---

## Usage

```bash
docker pull arcts/rsyslog
docker run -d -p 514:514/tcp -p 514:514/udp arcts/rsyslog:latest
```
