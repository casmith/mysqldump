FROM alpine:3.24

# MariaDB client (Alpine's mysql-client is only an alias for it).
RUN apk add --no-cache mariadb-client bash

COPY dump.sh /
COPY import.sh /
ENTRYPOINT ["/dump.sh"]
