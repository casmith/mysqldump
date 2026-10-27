# mysqldump
A docker image for backing up remote MySQL/MariaDB databases. Handy for kubernetes.

## Images
- `casmith/mysqldump`: runs `mariadb-dump`, writes `/mysqldump/<DB_NAME>_<timestamp>.sql.gz`
  (or one file per database with `ALL_DATABASES`)
- `casmith/mysqlrestore`: pipes `FILE` into `mariadb`

## Environment
| Variable | Purpose |
|---|---|
| `DB_HOST`, `DB_USER`, `DB_PASS`, `DB_NAME` | connection (`MYSQL_ENV_*` variants also accepted) |
| `ALL_DATABASES` | dump every non-system database |
| `IGNORE_DATABASE` | with `ALL_DATABASES`, skip this one |
| `FILE` | restore only: dump file to restore |

## Releases
Versions come from conventional commits (`feat:` → minor, `fix:` → patch) and
are tagged in git by CI. Only versioned tags are published; `latest` is no
longer updated. Dependabot proposes Alpine and action updates.
