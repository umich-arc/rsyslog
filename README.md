# rsyslog

A small alpine based rsyslog container configured to listen on port tcp/udp port 514 and relays the messages to stdout. Useful for troubleshooting and debugging.

---

## Usage

```bash
docker pull arcts/rsyslog
docker run -d -p 514:514/tcp -p 514:514/udp arcts/rsyslog:latest
```
