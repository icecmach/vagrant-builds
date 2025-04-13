# Postgres on AlmaLinux 9.5

Start the build as follows.

```
cd vagrant-builds/postgres/almalinux
➜ vagrant up
```

After logging in with user postgres:

```
vagrant-builds/postgres/almalinux
➜ vssh
[vagrant@vbox ~]$ sudo su - postgres
Last login: Sun Apr 13 15:13:00 UTC 2025
==================== PostgreSQL System Info ====================
PostgreSQL Service Status: pg_ctl: server is running (PID: 4165)
/usr/bin/postgres "-D" "/var/lib/pgsql/data"
------------------------------------------------------------
PGData Usage: 43M	/var/lib/pgsql/data
------------------------------------------------------------
Memory Usage: Total memory used by PostgreSQL (in KB): 101.535 MB
==================== End of PostgreSQL Info ====================
```
