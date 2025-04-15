# Postgres on AlmaLinux 9.5

Build based on latest Postgres source code

## Required Software

* [Postgres source](https://www.postgresql.org/ftp/source/)

Place the software in the "software" directory before calling the vagrant up command.

Directory contents when software is included.

```
➜ tree
.
├── README.md
├── scripts
│   ├── postgresql.service
│   ├── setEnv.sh
│   └── setup.sh
├── software
│   └── postgresql-17.4.tar.gz
└── Vagrantfile

3 directories, 6 files
```

Start the build as follows.

```
cd vagrant-builds/postgres-latest/almalinux
➜ vagrant up
```

After logging in with user postgres:

```
vagrant-builds/postgres-latest/almalinux
➜ vssh
[vagrant@vbox ~]$ sudo su - postgres
Last login: Tue Apr 15 00:26:04 UTC 2025
==================== PostgreSQL System Info ====================
PostgreSQL Service Status: pg_ctl: server is running (PID: 15171)
/usr/local/pgsql/bin/postgres "-D" "/usr/local/pgsql/data"
------------------------------------------------------------
PGData Usage: 46M	/usr/local/pgsql/data
------------------------------------------------------------
Memory Usage: Total memory used by PostgreSQL (in KB): 82.9219 MB
==================== End of PostgreSQL Info ====================
```
