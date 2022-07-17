## Environment setup

Either use `pipenv` for Virtual Environment or Docker container

### Python virtual enironment

Sync dependencies of specific versions and open subshell:

```bash
pipenv sync
pipenv shell

dbt --version
dbt debug
```
*Не получилось установить через `pipenv`, неразрешимые зависимости при установке `typing-extensions`. Исключила snowflake connector, из-за которого возникали противоречия с версиями из requirements.txt и установила пакеты через `pipenv run pip install -r`
До Docker-а не добралась.*


### Docker

1. Launch containers with dbt and postgres
2. Enter dbt container for interactive session

```bash
docker-compose up -d
docker-compose exec dbt bash

dbt --version
dbt debug
```

Or simply attach shell in VS Code:

![](https://habrastorage.org/webt/rc/v9/-k/rcv9-ktw8dlyfyh_rklhigeqgse.png)
