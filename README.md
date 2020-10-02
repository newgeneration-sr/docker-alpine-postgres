# PostgreSQL on Alpine Linux + S6 Overlay

# Auto configuration parameters :

- PGDATA=/var/lib/postgresql/data ( data position in the container )
- PSQL_USER=root ( psql root user )
- PSQL_PASS=root ( psql root password )
      
- DB_0_NAME=db0 ( first database name and user access )
- DB_0_PASS=pass0 ( first database pasword )
- DB_0_CREATOR=1 ( DB user can create other DB **if set** )

- DEBUG=1 ( print debug info **if set** )

# TODO features :
- auto backups

# Compose file exemple

```
version: '3.1'

services:
  postgres:
    image: dotriver/postgres
    environment:
      - PGDATA=/var/lib/postgresql/data
      - PSQL_USER=root
      - PSQL_PASS=root
      
      - DB_0_NAME=db0
      - DB_0_PASS=pass0

      - DB_1_NAME=db1
      - DB_1_PASS=pass1
      - DB_1_CREATOR=1

      - DEBUG=1
    volumes:
      - dbdata:/var/lib/postgresql/data
    ports:
      - 5432:5432

volumes:
    dbdata:
```