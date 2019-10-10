# ridgepole-docker

## Usage w/ [whalebrew](https://github.com/whalebrew/whalebrew)

```bash
DATABASE_URL=postgres://postgres:@host.docker.internal:5432/dbname

# export
ridgepole -o Schemafile -c $DATABASE_URL --export

# apply
ridgepole -o Schemafile -c $DATABASE_URL --apply
```

## Installation

```bash
whalebrew install izumin5210/ridgepole
```
