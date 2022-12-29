Use the following command to run a docker container:

```docker
$ docker-compose run --rm sqlite3 db/chinook.db
```

alternative way
```docker
$ docker run --rm -it -v "$(pwd):/code" -w /code keinos/sqlite3 sqlite3 db/chinook.db
```
