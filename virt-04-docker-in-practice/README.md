# Домашнее задание к занятию 5. «Практическое применение Docker»


# Задача 2*

<center>
<img src="img/ya-registry.png">
</center>

# Задача 3

<center>
<img src="img/mysql-t3.JPG">
</center>

# Задача 4

<center>
<img src="img/check-host-t4.JPG">
</center>

<center>
<img src="img/mysql-t4.JPG">
</center>

[Bash-скрипт для скачивания и запуска проекта](https://github.com/alex-bel31/shvirtd-example-python/blob/main/install_run.sh)

[Ссылка на fork-репозиторий](https://github.com/alex-bel31/shvirtd-example-python)

# Задача 5*

<center>
<img src="img/crontab-dump_db-t5.JPG">
</center>

[Скрипт для резервного копирования БД MySQL](https://github.com/alex-bel31/virtd-homeworks/blob/main/virt-04-docker-in-practice/dump_db.sh)

При запуске контейнера из образа `schnitzler/mysqldump`:

```ps1
docker run \
    --rm --entrypoint "" \
    -v /opt/backup:/backup \
    --network shvirtd-example-python_backend \
    schnitzler/mysqldump \
    mysqldump --opt -h shvirtd-example-python-db-1 -uroot -p******* --result-file=/backup/dumps.sql virtd
```

Выходила ошибка `Got error: 1045: "Plugin caching_sha2_password could not be loaded: Error loading shared library` скорее всего из-за использования старой версии `client-mysql` в образе. Поэтому использовал образ `mysql:8`.

# Задача 6

<center>
<img src="img/dive-t6(1).JPG">
</center>

<center>
<img src="img/dive-t6(2).JPG">
</center>

<center>
<img src="img/dive-t6(3).JPG">
</center>

# Задача 6.1

<center>
<img src="img/docker-cp-t6_1.JPG">
</center>
